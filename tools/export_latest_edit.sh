#!/usr/bin/env bash
set -euo pipefail

# Export selected files from a target commit (default: HEAD)
# Usage:
#   tools/export_latest_edit.sh [commit] [output_dir]
# Example:
#   tools/export_latest_edit.sh HEAD exported

COMMIT="${1:-HEAD}"
OUT_DIR="${2:-exported}"

mkdir -p "$OUT_DIR/kicad/claudot"

git show "${COMMIT}:README.md" > "$OUT_DIR/README.md"
git show "${COMMIT}:kicad/claudot/claudot.kicad_pcb" > "$OUT_DIR/kicad/claudot/claudot.kicad_pcb"

echo "Exported files from $COMMIT to $OUT_DIR"
echo "- $OUT_DIR/README.md"
echo "- $OUT_DIR/kicad/claudot/claudot.kicad_pcb"
