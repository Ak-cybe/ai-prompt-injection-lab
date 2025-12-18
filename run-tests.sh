#!/bin/bash
echo "🚀 Starting Automated Security Tests (Promptfoo)..."

# Check if promptfoo is installed
if ! command -v promptfoo &> /dev/null; then
    echo "❌ Promptfoo is not installed. Installing now..."
    npm install -g promptfoo@0.60.0
fi

# Create reports directory if it doesn't exist
mkdir -p reports

# Run evaluation
echo "Running evaluation against promptfoo-config.yaml..."
promptfoo eval -c promptfoo-config.yaml --output reports/security-report.html --output reports/security-report.json

echo "✅ Tests completed!"
echo "📄 Report generated at: reports/security-report.html"
