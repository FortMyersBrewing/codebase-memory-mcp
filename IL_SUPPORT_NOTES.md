# codebase-memory-mcp — .NET IL (`.il`) Support: Detailed Implementation Notes

**Purpose:** Complete reference for how `.il` (ILASM / CIL text) support was added to
cbm — the grammar, the C-side integration, the field-access fix, the build/deploy
process, and all the environment gotchas. Written 2026-06-25.

---

## 0. Architecture at a glance

```
tree-sitter-il (separate repo)          codebase-memory-mcp (this repo, C engine)
  grammar.js  ──tree-sitter generate──► src/parser.c
                                          │  cp into
                                          ▼
        internal/cbm/vendored/grammars/il/parser.c   (compiled into the binary)
                                          │
   lang_specs.c  ── CBM_LANG_IL spec (node-type → category arrays)
   language.c    ── ".il" → CBM_LANG_IL, display name
   extract_*.c   ── generic + IL-specific extraction handlers
                                          │
                          one 270 MB static binary: build/c/codebase-memory-mcp.exe
                          (MCP stdio server; also has cli/install/uninstall subcmds)
```

The **C engine** is the product (`Makefile.cbm`, `src/` + `internal/cbm/`). There is
also a `pkg/go/` Go tree — **ignore it**; the installed MCP binary is the C one.

cbm is **spec-driven**: a per-language table (`CBMLangSpec`) lists tree-sitter
node-type *names* per semantic category. A generic AST walker reads those + the
grammar's tree-sitter **field names** (`name`, `function`, `field`, `opcode`). No
`.scm` query files. Adding a language = vendor its `parser.c`, add a `CBMLangSpec`
row, and (for anything not covered generically) add a node-type-specific handler.

---

## 1. The grammar (`tree-sitter-il`, repo `github.com/FortMyersBrewing/tree-sitter-il`)

First-party tree-sitter grammar for ILASM text. Node-type names were chosen to map
1:1 onto cbm categories (below). Key history (see that repo's `GLR_INVESTIGATION.md`):

- **The "GLR collapse" was a lexer maximal-munch bug**, not GLR. `generic_suffix`
  was a single regex token `/<([^<>]|<[^<>]*>|'[^']*')*>/`; both `[^<>]` and
  `'[^']*'` can eat a `'`, so the DFA re-paired quotes across the intended `>` and
  swallowed hundreds of chars into a *later* `>` (in another method). Fix: exclude
  `'` from the bare classes → `/<([^<>']|'[^']*'|<([^<>']|'[^']*')*>)*>/`.
- Later, `generic_suffix` was made **structural** (`seq('<', _type, repeat(seq(',',
  _type)), '>')`) for arbitrary nesting depth, with a separate `generic_params`
  rule for *declarations* (`<([asm]I) T>`, variance `+T`, constraints in either
  order).
- Validated on the **full dnSpy IL dump (11,951 files, 0 parse errors)**. Real-world
  constructs that needed handling: `strict`/`nooptimization` attrs; `static` as a
  member attribute (NOT a calling convention); bodyless pinvoke/abstract/runtime
  methods (`method_body` optional); `pinvokeimpl("dll" as "entry" winapi)` (modeled
  explicitly — `pinvokeimpl` is a keyword so it never coalesces into `attr_call`);
  `marshal(...)` type suffix; multi-dim arrays `[0..., 0...]`; quoted/hyphen
  assembly refs `['DirectShowLib-2005']`; `ldsflda`; `ldtoken field/method ...`
  (`token_reference` operand); quoted generic vars `!'<value>j__TPar'`; field layout
  offsets `.field [0]`; `.param type <name>`; `.permissionset`; UTF-8 BOM.

### Regenerate + re-vendor the parser

```bash
# tree-sitter CLI must run FROM the grammar dir (else "No language found" / false 0 errors)
cd /c/Users/whyter/source/repos/tree-sitter-il
/c/msys64/mingw64/bin/tree-sitter.exe generate            # grammar.js → src/parser.c
cp src/parser.c ../codebase-memory-mcp/internal/cbm/vendored/grammars/il/parser.c
rm ../codebase-memory-mcp/build/c/grammar_il.o            # Makefile doesn't track the included parser.c
```
MSYS shell: `/c/msys64/usr/bin/bash -lc '...'` — the `-lc` login shell resets cwd to
home each call, so `cd` inline.

---

## 2. Node-type → cbm category map (the contract)

| Grammar node | `CBMLangSpec` slot | Graph result |
|---|---|---|
| `compilation_unit` | module_node_types | `Module` node |
| `class_definition` | class_node_types | `Class` node |
| `method_definition` | function_node_types | `Method` node |
| `field_definition` | field_node_types | `Field` node *(needed the fix in §5)* |
| `call_instruction` (call/callvirt/newobj/calli) | call_node_types | `CALLS` edge |
| `extern_assembly` (`.assembly extern`) | import_node_types | import |
| `exception_block` (`.try/.catch/...`) | branching_node_types | `Branch` |
| `local_declaration` (`.locals`) | variable_node_types | variable |
| `throw_instruction` (throw/rethrow) | throw_node_types | `THROWS` edge |
| `field_instruction` (ldfld/ldsfld/stfld/stsfld/ldflda/ldsflda) | *(IL handler)* | `READS`/`WRITES` edge → `Field` *(fix in §5)* |
| `method_reference_instruction` (ldftn/ldvirtftn) | *(IL handler)* | `USAGE` edge |

cbm reads tree-sitter **field names** the grammar sets: `field('name', …)`,
`field('function', …)` (call callee), `field('field', …)` (field-access target),
`field('opcode', …)`.

---

## 3. Files that make up IL support in cbm

### 3.1 `internal/cbm/vendored/grammars/il/parser.c`
Generated parser (from the grammar). Plus `tree_sitter/` headers and `LICENSE`.
Compiled into the binary as `prod_grammar_il.o`.

### 3.2 `internal/cbm/lang_specs.c`
- `extern const TSLanguage *tree_sitter_il(void);` (~line 167).
- The node-type arrays (~lines 1562–1570):
  ```c
  static const char *il_func_types[]   = {"method_definition", NULL};
  static const char *il_class_types[]  = {"class_definition", NULL};
  static const char *il_field_types[]  = {"field_definition", NULL};
  static const char *il_module_types[] = {"compilation_unit", NULL};
  static const char *il_call_types[]   = {"call_instruction", NULL};
  static const char *il_import_types[] = {"extern_assembly", NULL};
  static const char *il_branch_types[] = {"exception_block", NULL};
  static const char *il_var_types[]    = {"local_declaration", NULL};
  static const char *il_throw_types[]  = {"throw_instruction", NULL};
  ```
- The spec row (~line 2553):
  ```c
  [CBM_LANG_IL] = {CBM_LANG_IL, il_func_types, il_class_types, il_field_types,
                   il_module_types, il_call_types, il_import_types, empty_types,
                   il_branch_types, il_var_types, empty_types, il_throw_types, NULL,
                   empty_types, NULL, NULL, tree_sitter_il, NULL},
  ```
- **`CBMLangSpec` struct field order** (`internal/cbm/lang_specs.h`) — positional, so
  the row above must match exactly:
  ```
  language, function_node_types, class_node_types, field_node_types,
  module_node_types, call_node_types, import_node_types, import_from_types,
  branching_node_types, variable_node_types, assignment_node_types, throw_node_types,
  throws_clause_field, decorator_node_types, env_access_functions,
  env_access_member_patterns, ts_factory, embedded_imports
  ```
  Note: IL leaves `assignment_node_types` = `empty_types`; field-access edges come
  from the dedicated IL handler (§3.4), NOT this slot.

### 3.3 `src/discover/language.c`
- `{".il", CBM_LANG_IL}` extension entry (~line 144).
- `[CBM_LANG_IL] = ".NET IL"` display name (~line 748).
- `CBM_LANG_IL` is in the `CBMLanguage` enum (`internal/cbm/cbm.h`).

### 3.4 `internal/cbm/extract_semantic.c` — IL-specific handlers
Both guard `if (spec->language != CBM_LANG_IL) return;`. Invoked by the generic walk
in `internal/cbm/extract_unified.c` (~lines 851–855, alongside `handle_calls`,
`handle_throws`).

- **`handle_field_accesses`** — fires on node type `field_instruction`. Reads the
  `field` field (target name), `opcode` (write = `stfld`/`stsfld`), and owner type
  (the named child immediately before the field name, skipping a `generic_suffix`).
  Pushes a `CBMFieldAccess` to `result->field_accesses` **and** (the §5 fix) an
  owner-qualified `CBMReadWrite` to `result->rw`.
- **`handle_method_references`** — fires on `method_reference_instruction`
  (ldftn/ldvirtftn). Pushes a `CBMMethodReference`. (Currently surfaces as a `USAGE`
  edge via the generic usage path; a dedicated `METHOD_REFERENCE` edge type is a
  possible future taxonomy improvement.)

### 3.5 `internal/cbm/extract_defs.c` — IL field-def branch (§5 fix)
`extract_class_fields` (~line 4806) gets an `if (ctx->language == CBM_LANG_IL)`
branch that builds the `Field` def directly (see §5 for why).

### 3.6 `internal/cbm/cbm.h` — structs
```c
typedef struct { const char *var_name; const char *enclosing_func_qn; bool is_write; } CBMReadWrite;
typedef struct { const char *owner_type; const char *field_name;  const char *enclosing_func_qn; bool is_write; } CBMFieldAccess;
typedef struct { const char *owner_type; const char *method_name; const char *enclosing_func_qn; ... } CBMMethodReference;
// CBMFileResult has: defs, calls, imports, usages, throws, rw, field_accesses, method_references, ...
```
Push fns: `cbm_defs_push`, `cbm_rw_push`, `cbm_field_accesses_push`.
**Rule: append any NEW `CBMFileResult` fields at the END** (stale `.o` from a
mid-struct insertion has caused segfaults; always `make clean-c` after a struct
change).

### 3.7 Edge creation (pipeline)
`result->rw` → `READS`/`WRITES` edges in **two** places (both must agree):
- `src/pipeline/pass_parallel.c` — `resolve_file_rw` (~line 1947). *Primary path at
  index time* (the fused parallel worker).
- `src/pipeline/pass_usages.c` — `resolve_rw_edges` (~line 278). Sequential fallback.

Both: find enclosing method node → `cbm_registry_resolve(var_name, module_qn,
imports)` (suffix-match into the qn index) → `cbm_gbuf_find_by_qn` → insert
`WRITES`/`READS` edge. `result->field_accesses` and `result->method_references` are
NOT consumed by the pipeline — they're auxiliary; the edges come via `rw`/`usages`.

---

## 4. Build, deploy, run

### Build the server binary
```bash
/c/msys64/usr/bin/bash -lc 'cd <cbm> && make -f Makefile.cbm SANITIZE= cbm'
# → build/c/codebase-memory-mcp.exe  (~270 MB static, all 158 grammars)
```
- **`SANITIZE=` empty is required** (mingw gcc lacks libsanitizer).
- One giant `cc` invocation compiles all `src/` + `internal/cbm/` `.c` inline (no
  per-file `.o` for those) and links the vendored grammar `.o`s. Clean build ~6 min;
  incremental relink (after editing one `.c`) ~1 min (the 270 MB link dominates).
- Other targets: `cbm-with-ui` (needs Node), `test` (the suite).

### GOTCHAS (these cost real time)
1. **`make clean-c` deletes the server binary.** `run_clean_suite.sh` does
   `clean-c` then rebuilds only the *test* binaries — so after the suite,
   `build/c/codebase-memory-mcp.exe` is GONE. Rebuild with `make … cbm`.
2. **Running MCP server locks the .exe** → link fails `Permission denied`. Windows
   lets you rename a running exe: `mv build/c/codebase-memory-mcp.exe
   build/c/codebase-memory-mcp.locked.exe`, then build into the freed name. The
   live process keeps running on the old image; new invocations use the new file.
3. **`make clean-c` first after any `cbm.h`/struct change** (stale `.o` segfaults).

### MCP registration (Claude Code)
```
claude mcp add cbm-dev "C:\…\codebase-memory-mcp\build\c\codebase-memory-mcp.exe" -s user
claude mcp list ; claude mcp get cbm-dev ; claude mcp remove cbm-dev -s user
```
- User scope = all projects. Tools appear as `mcp__cbm-dev__*`.
- MCP servers load at **window startup** — open a NEW window to pick up changes.
- The original prod server: `C:\Users\whyter\AppData\Local\codebase-memory-mcp\
  codebase-memory-mcp.exe` (installed via the binary's own `install` subcommand,
  which auto-configures Claude Code/Codex/etc.).

### Binary subcommands
```
codebase-memory-mcp                      # run MCP server on stdio (default)
codebase-memory-mcp cli <tool> [json]    # one-shot tool call (great for testing)
codebase-memory-mcp install|uninstall|update
codebase-memory-mcp config <list|get|set|reset>
codebase-memory-mcp --version|--help   ;  --ui=true --port=N
```
Example: `… cli index_repository '{"repo_path":"C:/…/ILDump"}'`
         `… cli query_graph '{"project":"<slug>","query":"MATCH (f:Field) RETURN count(f)"}'`

### Test / verify
- Full suite: `make -f Makefile.cbm SANITIZE= test` or `bash run_clean_suite.sh`
  (does `clean-c` first). Last known green: **5667 passed, 3 skipped**, 0 segfaults,
  IL regression PASS. There's an IL row in `tests/test_grammar_labels.c` and an IL
  case in `tests/test_grammar_regression.c`.
- Probe (untracked): `build_probe.sh` → `build/c/probe-il.exe <file.il>` prints
  DEFS / CALLS / THROWS / FIELD-ACCESSES / METHOD-REFERENCES counts.

---

## 5. The field-access bug & fix (commit `6e97238`)

**Symptom (QA on the live graph):** IL `stfld`/`ldfld` produced **no** edges;
project-wide `WRITES`=58 (all C#-side); `MATCH (f:Field)` returned **0** — no `Field`
label existed at all.

**Two root causes:**
1. **No `Field` nodes.** `extract_class_fields` requires a tree-sitter `type`
   *field* on the node (`ts_node_child_by_field_name(child,"type")`, the Java/C#/Go
   shapes). The (frozen) IL grammar's `field_definition` labels only `name`; the
   type is an *unlabeled* `_type` child. So `type_node` was null → every IL field
   `continue`-skipped → 0 Field defs → nothing for accesses to resolve to.
2. **Field-access data orphaned.** `handle_field_accesses` filled
   `result->field_accesses`, but the pipeline only turns `result->rw` into
   READS/WRITES edges. So the data was extracted and thrown away.

**Fix (C-side only; grammar untouched; no struct changes):**
1. `extract_defs.c`: IL branch in `extract_class_fields` — build the `Field` def
   from the `name` field + the named child immediately preceding it (the type);
   `qualified_name = "<class_qn>.<name>"`, `label="Field"`.
2. `extract_semantic.c`: `handle_field_accesses` also pushes a `CBMReadWrite` into
   `result->rw` with an **owner-qualified** `var_name` = `"<owner_type>.<field_name>"`.
   Owner-qualification is **essential**: bare names like `'<>1__state'`, `'<>u__1'`,
   `'<>t__builder'` repeat across *thousands* of state-machine classes; bare
   suffix-match would resolve ambiguously. With the owner prefix they resolve to the
   correct class's field.

**Verified** (fresh re-index of `MaxSea.S57S63Installer`): `Field` 0→**398**,
`WRITES→Field` 0→**297**, `READS→Field` 0→**382**. Spot-checks correct:
`set_IsUpdating` WRITES / `get_IsUpdating` READS the backing field `dF7Xiz8Ebxt`;
`CheckForNoaaS57UpdatesAndInstall` WRITES `'<>1__state'`/`'<>t__builder'`/`'<>4__this'`
resolved to the *right* async state-machine class.

See `IL_FIELD_ACCESS_HANDOFF.md` for the full QA write-up.

---

## 6. Indexing & memory behavior (operational gotchas)

- **Memory budget = 50 % of total RAM**, hard-coded (`MAIN_RAM_FRACTION` in
  `src/main.c` → `cbm_mem_init` in `src/foundation/mem.c`). No env override for the
  fraction. The whole graph is built in memory and serialized in the final **`dump`**
  pass. The full ILDump (12,010 files → **214 K nodes / 1.37 M edges**) needs >4 GB at
  dump: it **failed `phase=dump` on an 8 GB VM** (4 GB budget) and **succeeded on
  32 GB** (16 GB budget). The dump error logs only `pipeline.err phase=dump` with no
  reason — easy to misread as an LSP/extraction failure (it isn't).
- **Store location:** `~/.cache/codebase-memory-mcp/<project-slug>.db` (SQLite, one
  per project; slug = path with separators → `-`). Override with env
  **`CBM_CACHE_DIR`** (resolved in `cbm_resolve_cache_dir`, `src/foundation/
  platform.c`). XDG_CACHE_HOME is NOT honored. The store is **global per-user** —
  every binary (prod + cbm-dev) shares it unless you set CBM_CACHE_DIR.
- **Incremental indexing is content-hash based** (`pipeline.route path=incremental`
  → `incremental.classify changed=0 … incremental.noop`). Re-indexing unchanged
  files after only the *extractor* changed is a **no-op** — it will NOT pick up new
  extraction logic. To force a full re-extract you must **delete the project `.db`**
  (`rm ~/.cache/codebase-memory-mcp/<slug>.db*`). `delete_project` does not reliably
  remove the file. And the `.db` can't be deleted while a running server holds it
  open ("Device or resource busy") — stop the cbm-dev server(s) first.
- `index_repository` modes: `full` (default; +similarity/semantic), `moderate`,
  `fast` (no similarity/semantic), `cross-repo-intelligence`.

---

## 7. Repos & commits

- Grammar: `github.com/FortMyersBrewing/tree-sitter-il` (pushed).
  - `848bbc0` full dnSpy corpus (11,951 files, 0 errors); `52469cd` generic_suffix
    over-match fix.
- cbm fork: `github.com/FortMyersBrewing/codebase-memory-mcp` (public fork of
  DeusData/codebase-memory-mcp).
  - `79f95b0` vendored parser for full corpus; `6e97238` IL field defs + field-access
    edges; `35b963d` handoff doc.
