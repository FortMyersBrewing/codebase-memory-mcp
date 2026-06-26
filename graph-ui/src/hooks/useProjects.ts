import { useCallback, useEffect, useState } from "react";
import { callTool } from "../api/rpc";
import type { Project, SchemaInfo } from "../lib/types";

interface ProjectInfo {
  project: Project;
  schema: SchemaInfo | null;
}

interface UseProjectsResult {
  projects: ProjectInfo[];
  loading: boolean;
  error: string | null;
  refresh: () => void;
}

export function useProjects(): UseProjectsResult {
  const [projects, setProjects] = useState<ProjectInfo[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const fetchProjects = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      const result = await callTool<{ projects: Project[] }>("list_projects");
      const list = result.projects ?? [];

      /* Show the project list immediately (schema null), then enrich each with
       * its schema in the background. get_graph_schema scans the graph and can
       * take seconds on a large project (cold); blocking the whole list on
       * Promise.all over every project made the UI appear empty until the
       * slowest scan finished. Render first, fill counts in as they arrive. */
      setProjects(list.map((p) => ({ project: p, schema: null })));
      setLoading(false);

      for (const p of list) {
        callTool<SchemaInfo>("get_graph_schema", { project: p.name })
          .then((schema) => {
            setProjects((prev) =>
              prev.map((info) =>
                info.project.name === p.name ? { ...info, schema } : info,
              ),
            );
          })
          .catch(() => {
            /* leave schema null for this project */
          });
      }
    } catch (e) {
      setError(e instanceof Error ? e.message : "Failed to fetch projects");
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    fetchProjects();
  }, [fetchProjects]);

  return { projects, loading, error, refresh: fetchProjects };
}
