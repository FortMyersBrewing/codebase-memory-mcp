import { useCallback, useState } from "react";
import type { GraphData } from "../lib/types";

interface UseGraphDataResult {
  data: GraphData | null;
  loading: boolean;
  error: string | null;
  fetchOverview: (project: string) => void;
  fetchDetail: (project: string, centerNode: string) => void;
}

/* Overview cap: a 3D Three.js scene renders a few thousand nodes smoothly but
 * freezes the browser well before tens of thousands. The backend now returns the
 * highest-degree nodes for the cap (sort_by=degree), so this is the connected
 * "backbone" of large graphs (e.g. the 310K-node IL dump), not an arbitrary slice. */
async function fetchLayout(
  project: string,
  maxNodes = 2500,
): Promise<GraphData> {
  const params = new URLSearchParams({ project, max_nodes: String(maxNodes) });
  const res = await fetch(`/api/layout?${params}`);

  if (!res.ok) {
    const body = await res.json().catch(() => ({ error: res.statusText }));
    throw new Error(body.error ?? `HTTP ${res.status}`);
  }

  return res.json();
}

export function useGraphData(): UseGraphDataResult {
  const [data, setData] = useState<GraphData | null>(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const fetchOverview = useCallback(async (project: string) => {
    setLoading(true);
    setError(null);
    try {
      const result = await fetchLayout(project);
      setData(result);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Failed to fetch layout");
    } finally {
      setLoading(false);
    }
  }, []);

  const fetchDetail = useCallback(
    async (project: string, _centerNode: string) => {
      setLoading(true);
      setError(null);
      try {
        /* TODO: detail level with center_node filtering */
        const result = await fetchLayout(project);
        setData(result);
      } catch (e) {
        setError(e instanceof Error ? e.message : "Failed to fetch layout");
      } finally {
        setLoading(false);
      }
    },
    [],
  );

  return { data, loading, error, fetchOverview, fetchDetail };
}
