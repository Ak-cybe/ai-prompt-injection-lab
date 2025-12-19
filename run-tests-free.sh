#!/bin/bash
set -euo pipefail # Strict mode

# Check if Ollama is running
if ! curl -s http://localhost:11434/api/tags >/dev/null; then
    echo "❌ Error: Ollama is not running on localhost:11434"
    echo "   Run 'ollama serve' in another terminal."
    exit 1
fi

# Check promptfoo
if ! command -v promptfoo &> /dev/null; then
    echo "📦 Installing promptfoo..."
    npm install -g promptfoo@latest
fi

echo "🚀 Running Tests..."
mkdir -p reports

export PROMPTFOO_DISABLE_SHARING=true
promptfoo eval -c promptfoo-config.ollama.yaml \
  --output reports/free-report.html \
  --output reports/free-report.json

echo "Done."
echo "Open: reports/free-report.html"
