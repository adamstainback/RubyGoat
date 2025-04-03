#!/bin/bash

set -euo pipefail

if [[ -z "${SNYK_TOKEN:-}" ]]; then
  echo "❌ SNYK_TOKEN environment variable not set."
  exit 1
fi

echo "🔍 Running Snyk OSS scan..."
snyk test --all-projects --json > snyk-oss-results.json

echo "🧾 Generating summary..."
node snyk-oss-report.js

echo "✅ Summary written to pr-comment.md"
