#!/usr/bin/env bash

set -euo pipefail

# Don't return null result on glob patterns
shopt -s nullglob

# Install bump-cli
npm install -g bump-cli

apiKey="BUMP_TOKEN"
docId="BUMP_DOC_ID"

echo "Using token ${apiKey} for Documentation 'multi-branches-demo' (id: ${!docId})"

# For each *-source.yaml files in the apis/ directory
for api in doc/*/openapi.{yml,yaml,json}; do
    [ -f "${api}" ] || continue
    branchName=$(basename "$(dirname "$api")")
    echo "Deploying ${api} on branch ${branchName}"

    bump deploy --doc "${!docId}" --token "${!apiKey}" --branch "${branchName}" "${api}"
done
