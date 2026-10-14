#!/usr/bin/env bash
# Regenerates adapters/universal-prompt.md from the skill, so the two never drift apart.
set -euo pipefail
cd "$(dirname "$0")/.."
SK=skill/civic-navigator
OUT=adapters/universal-prompt.md
{
  cat adapters/preamble.md
  echo; echo "---"; echo
  # SKILL.md body without the YAML frontmatter
  awk 'BEGIN{c=0} /^---$/ && c<2 {c++; next} c>=2 {print}' "$SK/SKILL.md"
  echo; echo "---"; echo
  cat "$SK/references/pack-format.md"
  for f in "$SK"/packs/*.md; do
    echo; echo "---"; echo
    echo "<!-- Pack file: packs/$(basename "$f") -->"
    cat "$f"
  done
} > "$OUT"
echo "Wrote $OUT ($(wc -c < "$OUT") bytes)"
