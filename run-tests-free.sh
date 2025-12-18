#!/bin/bash
set -e

echo "== FREE MODE: Ollama + Promptfoo =="
echo "Generating HTML report..."

command -v promptfoo >/dev/null 2>&1 || npm i -g promptfoo@latest
mkdir -p reports

export PROMPTFOO_DISABLE_SHARING=true
promptfoo eval -c promptfoo-config.ollama.yaml \
  --output reports/free-report.html \
  --output reports/free-report.json

echo "Done."
echo "Open: reports/free-report.html"
