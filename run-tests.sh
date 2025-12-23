#!/bin/bash
set -euo pipefail

echo "🚀 Starting Automated Security Tests (Promptfoo - OpenAI)..."

# Check if OPENAI_API_KEY is set
if [ -z "${OPENAI_API_KEY:-}" ]; then
    echo "❌ Error: OPENAI_API_KEY environment variable is not set."
    echo "   Set it with: export OPENAI_API_KEY='your-key-here'"
    exit 1
fi

# Check if promptfoo is installed
if ! command -v promptfoo &> /dev/null; then
    echo "📦 Promptfoo is not installed. Installing now..."
    npm install -g promptfoo@latest
fi

# Create reports directory if it doesn't exist
mkdir -p reports

# Run evaluation
echo "Running evaluation against promptfoo-config.yaml..."
promptfoo eval -c promptfoo-config.yaml --output reports/security-report.html --output reports/security-report.json

echo "✅ Tests completed!"
echo "📄 Report generated at: reports/security-report.html"
