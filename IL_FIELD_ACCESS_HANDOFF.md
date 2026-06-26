# IL Field-Access & Method-Reference Extraction — Findings & Fix Request

**Audience:** Opus (cbm-dev extractor work)
**Date:** 2026-06-25
**Server under test:** `cbm-dev` MCP (the new build, candidate to replace `codebase-memory-mcp`)
**Corpus:** `C:\Users\whyter\projects\ILDump` — full dnSpy `.il` export, **12,010 files**, indexed as project `C-Users-whyter-projects-ILDump` (214,082 nodes / 1,373,968 edges).

---

## TL;DR

The new build indexes the full IL dump and extracts almost everything correctly. **Five of six target signals are solid. One is broken: IL field-access (`stfld`/`ldfld`/`stsfld`/`ldsfld`) edges are not being emitted.**

| Signal | Status | Evidence |
|---|---|---|
| DEFS (methods/classes/modules) | ✅ Full | 169,491 Methods, 18,592 Classes, 12,010 Modules |
| CALLS | ✅ Full, confidence-scored | 347,026 edges, `strategy`/`confidence` populated |
| THROWS | ✅ Full, type-resolved | 599 edges; 504 → `MaxSea.MaxSeaException`, long domain tail |
| INHERITS | ✅ Present | 4,232 edges |
| METHOD-REFERENCES (`ldftn`/`ldvirtftn`) | ⚠️ Present but mislabeled | Captured as `USAGE`, not a dedicated edge type |
| **FIELD-ACCESSES (`stfld`/`ldfld`/…)** | ❌ **Broken / not extracted** | `WRITES` = 58 total, 3 targets, none from IL |

---

## The broken one: field accesses

### What the source contains

File: `MaxSea.S57S63Installer/NoaaEncUpdateChecker.il`. A single method
(`CheckForNoaaS57UpdatesAndInstall`) contains 10+ `stfld` instructions. Examples
(grepped, with line numbers):

```
70:  IL_0017: stfld  bool  MaxSea.S57S63Installer.NoaaEncUpdateChecker/'<CheckForNoaaS57UpdatesAndInstall>d__18'::'<chartsUpdated>5__2'
99:  IL_0060: stfld  valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter`1<...>  ...::'<>u__1'
896: IL_0002: stfld  bool  MaxSea.S57S63Installer.NoaaEncUpdateChecker::dF7Xiz8Ebxt
```

Line 896 is a genuine instance-field write (`::dF7Xiz8Ebxt`, an obfuscated real
field). Lines 70/99 are compiler-generated state-machine fields (`'<>u__1'`,
`'<chartsUpdated>5__2'`) — those may legitimately be filtered, but the real one
should produce an edge.

### What the graph shows

```cypher
-- The method's only outbound edges (run against project C-Users-whyter-projects-ILDump):
MATCH (a:Method {name:'CheckForNoaaS57UpdatesAndInstall'})-[r:USAGE]->(b)
RETURN r.callee AS callee, b.name AS target
-- → 2 rows: ("Type","Heijden.DNS.Type"), ("NoaaEncUpdateChecker", "...NoaaEncUpdateChecker")
-- ZERO field-write edges, despite 10+ stfld in the body.
```

```cypher
-- Project-wide WRITES edges:
MATCH ()-[r:WRITES]->(b) RETURN b.name AS target, count(*) AS writes ORDER BY writes DESC
-- → only 3 targets: Position(54), Color(2), Couleur(2). Total 58.
```

**Conclusion:** For a 12,010-file .NET codebase saturated with `stfld`, a `WRITES`
total of 58 across 3 targets means **none of those 58 came from IL `stfld`** —
they're produced by some other (C#-side?) extractor. The IL `field_instruction`
node (which the grammar parses correctly — confirmed, `stfld`/`ldflda` appear in
`get_code_snippet` output) is **not** being turned into a field-access edge.

### What's expected

In an earlier design session the goal was explicitly:
> field-access edges carrying **owner type + field name**, for both reads
> (`ldfld`/`ldsfld`) and writes (`stfld`/`stsfld`).

The grammar emits these as `field_instruction` nodes with `opcode` +
`field`-name field + owner `_type`. The cbm-side handler (`handle_field_accesses`
in `extract_semantic.c`, per the earlier integration) needs to fire on the IL
`field_instruction` node-type and emit an edge (read vs. write distinguished by
opcode).

---

## The mislabeled one: method references (`ldftn`)

Lower priority — the data is present, just not under its own edge type.

### Source

```
554: IL_0098: ldftn  instance void MaxSea.S57S63Installer.NoaaEncUpdateChecker::rf0XiYJMLmc(valuetype [...]Percentage)
978: IL_0018: ldftn  instance class [mscorlib]System.Threading.Tasks.Task MaxSea.S57S63Installer.NoaaEncUpdateChecker::YTKXia5XUiK()
```

### Graph

```cypher
MATCH ()-[r:USAGE]->(b) WHERE r.callee IN ['rf0XiYJMLmc','YTKXia5XUiK']
RETURN r.callee, b.name, count(*)
-- → both present as USAGE edges; both targets exist as Method nodes.
```

So `ldftn` delegate/lambda wiring **is** captured — folded into `USAGE` rather
than a dedicated `METHOD_REFERENCE` edge. Decide whether that's acceptable or
whether these should carry their own edge type so "who wires up this method as a
delegate" is queryable distinctly from ordinary usage. Not a data-loss bug; a
taxonomy choice.

---

## Fix request

1. **Primary:** Make IL `field_instruction` nodes emit field-access edges
   (owner type + field name, read/write distinguished by opcode). Verify the
   handler is actually invoked for the `il` language and that the edge survives
   into the graph schema. Target: re-indexing `ILDump` should yield field-access
   edges in the thousands, not 58.
2. **Secondary (your call):** Decide whether `ldftn`/`ldvirtftn` should get a
   dedicated `METHOD_REFERENCE` edge type vs. staying under `USAGE`. If kept
   under `USAGE`, document it so downstream queries know to look there.

## Constraints (do not regress)

- **Grammar is frozen and correct — do not touch `grammar.js` or re-vendor the
  parser for this.** This is a cbm-side extraction bug, not a parse bug. The
  `field_instruction` node already parses; the snippet round-trips. 227/227 (and
  the larger 11,951-file) parse results must stay at their current clean rate.
- **No regressions to the working signals:** DEFS, CALLS (with confidence/
  strategy), THROWS (must stay type-resolved — 504→`MaxSeaException` is the
  canary), INHERITS must all hold at current counts after the change.
- **cbm suite must stay green** (last known: 5,667 passed / 3 skipped). Run the
  full clean suite (`run_clean_suite.sh` — `make clean-c` first; stale `.o` from
  mid-struct field insertion has caused segfaults before, so append any new
  struct fields at the END of `CBMFileResult`).
- **Don't filter out genuine fields while filtering state-machine noise.**
  Compiler-generated fields (`'<>1__state'`, `'<>u__1'`, `'<chartsUpdated>5__2'`)
  may be excluded, but real instance/static fields (e.g. `::dF7Xiz8Ebxt`) must
  produce edges.

## How to verify the fix (repro against the live MCP)

After re-indexing `C-Users-whyter-projects-ILDump`:

```cypher
-- Should return many rows (it currently returns 0):
MATCH (a:Method {name:'CheckForNoaaS57UpdatesAndInstall'})-[r]->(b)
WHERE type(r) IN ['WRITES','FIELD_ACCESS','READS']
RETURN type(r), r.callee, b.name

-- Project-wide field-access count should jump from 58 into the thousands:
MATCH ()-[r:WRITES|FIELD_ACCESS|READS]->() RETURN type(r), count(*)
```

Ground-truth file for spot-checking: `MaxSea.S57S63Installer/NoaaEncUpdateChecker.il`
(known `stfld` at lines 70, 96, 99, 117, 206, 209, 510, 646, 746, 896; known
`ldftn` at lines 554, 978).

---

## Opus review (2026-06-25) — root cause & fix

**Reproduced** against the live `cbm-dev` graph (project `C-Users-whyter-projects-ILDump`,
214,082 nodes). It's actually a **two-part** bug, deeper than just the edges:

### Finding 1 — IL field DEFINITIONS create zero nodes
`MATCH (f:Field) RETURN count(f)` → **0**. The graph has Method/Class/File/Module/
Folder/Function/Branch/Project labels and **no `Field` label at all**. So even a
correctly-extracted field access would have no target node to resolve to.

Cause: `extract_class_fields` (internal/cbm/extract_defs.c) requires a `type`
*tree-sitter field* on the node (`ts_node_child_by_field_name(child,"type")`,
shapes for Java/Go/Rust/C#). The IL grammar's `field_definition` labels only
`name`; the type is an **unlabeled `_type` child**. So `type_node` is null and
every IL field is `continue`-skipped → no Field defs. (Grammar is frozen, so the
fix is C-side: handle the IL field shape.)

### Finding 2 — field-access data is extracted but never consumed
`handle_field_accesses` (extract_semantic.c) *is* invoked in the walk
(extract_unified.c:854) and correctly fills `result->field_accesses`
(owner_type + field_name + is_write). But **no pipeline pass reads
`field_accesses`** — only `result->rw` becomes READS/WRITES edges
(pass_parallel.c:1947, pass_usages.c:278). So the IL field-access array is
orphaned. The 58 `WRITES` are C#-side `rw` entries.

(`ldftn` similarly fills `result->method_references`, also unconsumed — the QA's
"present as USAGE" is the generic usage walker, not the dedicated handler.)

### Fix (C-side only; grammar untouched; no new struct fields)
1. `extract_class_fields`: add an IL branch that builds a `Field` def from the
   `name` field + the unlabeled type child → Field nodes now exist.
2. `handle_field_accesses`: also push a `CBMReadWrite` into `result->rw` with an
   **owner-qualified** `var_name` (`owner_type.field_name`) so the existing,
   tested resolver (suffix-match) emits READS/WRITES. Owner-qualification is
   required because bare names like `'<>1__state'` repeat across thousands of
   state-machine classes and would resolve ambiguously.

### Result (verified on `MaxSea.S57S63Installer`, fresh re-index)

| Signal | Before | After |
|---|---|---|
| `Field` nodes | 0 | **398** |
| `WRITES → Field` edges | 0 (from IL) | **297** |
| `READS → Field` edges | 0 (from IL) | **382** |

Spot-checks (resolution is correct and owner-aware):
- `set_IsUpdating` **WRITES** `dF7Xiz8Ebxt`; `get_IsUpdating` **READS** it — the
  property backing field. (Line 896's `stfld dF7Xiz8Ebxt` is in `set_IsUpdating`,
  not `CheckForNoaaS57UpdatesAndInstall` as the handoff assumed — async methods
  split, so the original verification query targeted the wrong method.)
- `CheckForNoaaS57UpdatesAndInstall` **WRITES** `'<>t__builder'`, `'<>4__this'`,
  `'<>1__state'` and **READS** `'<>t__builder'` — the async state-machine setup.
  These resolve to the **correct** state-machine class's fields even though
  `'<>1__state'` exists in thousands of classes — confirming owner-qualified
  resolution works.

State-machine fields are **not** filtered (the handoff said that's acceptable);
the genuine field `dF7Xiz8Ebxt` produces edges as required.

Files changed (C-side only; grammar untouched; no struct changes):
- `internal/cbm/extract_defs.c` — IL branch in `extract_class_fields` (build a
  Field def from the `name` field + unlabeled type child).
- `internal/cbm/extract_semantic.c` — `handle_field_accesses` also pushes an
  owner-qualified `CBMReadWrite` into `result->rw`.

### Status

- **Fix complete & committed** (`6e97238`). Clean suite green (exit 0, 0
  segfaults, IL regression PASS).
- **Validated** on a fresh re-index of `MaxSea.S57S63Installer` (table above).
- `method_reference`/`ldftn` left under USAGE as the handoff allowed — taxonomy
  choice, not data loss.

### Live full `ILDump` graph — REFRESHED & DEPLOYED (2026-06-25)

Done. Fresh full re-index of `C-Users-whyter-projects-ILDump` with the fixed binary:
**Field nodes 0 → 96,042; WRITES→Field 58 → 78,470; READS→Field 0 → 140,648.**
Existing signals unchanged (Method 169,491; Class 18,592 — no regression). The
graph now carries IL field-access edges project-wide.

> The refresh required deleting **only** that one project's db file
> (`C-Users-whyter-projects-ILDump.db*`) — one SQLite file per project; all other
> projects (TimeZero, dnSpyEx, TZStudy, …) were untouched.

### (Historical) why the refresh was initially blocked

It could not be refreshed in place at first because:
1. cbm's incremental indexer is **content-hash based** — the `.il` files didn't
   change (only the extractor did), so re-indexing is a `incremental.noop`.
2. The forced-reindex path (and a manual `rm`) is blocked: the running `cbm-dev`
   server processes hold `…/.cache/codebase-memory-mcp/C-Users-whyter-projects-ILDump.db`
   open ("Device or resource busy").

To refresh, with the running servers stopped:
```
# 1. Close the Claude Code window(s) using cbm-dev (releases the db lock)
rm ~/.cache/codebase-memory-mcp/C-Users-whyter-projects-ILDump.db*
# 2. New window → cbm-dev index_repository on C:/Users/whyter/projects/ILDump
```
Expect Field nodes in the tens of thousands and WRITES/READS-to-Field edges in
the thousands (≈679 field edges came from the single `MaxSea.S57S63Installer`
assembly alone).
