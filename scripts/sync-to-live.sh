#!/usr/bin/env bash
set -euo pipefail

WITH_POLICY=false
WITH_PROMPTS=false

usage() {
  cat <<'USAGE'
Usage: ./scripts/sync-to-live.sh [--with-policy] [--with-prompts] [--all]

Copies all package extension entrypoints from ./extensions into ~/.pi/agent/extensions/.
Optional flags also sync policy and prompt templates.
USAGE
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --with-policy)
      WITH_POLICY=true
      ;;
    --with-prompts)
      WITH_PROMPTS=true
      ;;
    --all)
      WITH_POLICY=true
      WITH_PROMPTS=true
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown arg: $1" >&2
      usage
      exit 1
      ;;
  esac
  shift
done

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE_DIR="$ROOT_DIR/extensions"
TARGET_DIR="$HOME/.pi/agent/extensions"

mkdir -p "$TARGET_DIR"

shopt -s nullglob
extension_files=("$SOURCE_DIR"/*.ts)
if (( ${#extension_files[@]} == 0 )); then
  echo "No extension files found in: $SOURCE_DIR" >&2
  exit 1
fi

for source_file in "${extension_files[@]}"; do
  target_file="$TARGET_DIR/$(basename "$source_file")"
  cp "$source_file" "$target_file"
  echo "Synced extension: $source_file -> $target_file"
done
shopt -u nullglob

if [[ "$WITH_PROMPTS" == "true" ]]; then
  PROMPT_SOURCE_DIR="$ROOT_DIR/prompts"
  PROMPT_TARGET_DIR="$HOME/.pi/agent/prompts"
  mkdir -p "$PROMPT_TARGET_DIR"

  shopt -s nullglob
  prompt_files=("$PROMPT_SOURCE_DIR"/*.md)
  if (( ${#prompt_files[@]} == 0 )); then
    echo "No prompt templates found in: $PROMPT_SOURCE_DIR"
  else
    for prompt_file in "${prompt_files[@]}"; do
      cp "$prompt_file" "$PROMPT_TARGET_DIR/"
      echo "Synced prompt: $prompt_file -> $PROMPT_TARGET_DIR/$(basename "$prompt_file")"
    done
  fi
  shopt -u nullglob
fi

if [[ "$WITH_POLICY" == "true" ]]; then
  POLICY_SOURCE="$ROOT_DIR/policy/security-policy.json"
  POLICY_TARGET="$HOME/.pi/agent/security-policy.json"

  if [[ -f "$POLICY_SOURCE" ]]; then
    cp "$POLICY_SOURCE" "$POLICY_TARGET"
    echo "Synced policy: $POLICY_SOURCE -> $POLICY_TARGET"
  else
    echo "Policy file not found: $POLICY_SOURCE (skipped)"
  fi
fi

echo "Done. In pi, run /reload to pick up changes."
