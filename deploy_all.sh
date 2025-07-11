#!/bin/bash

set -e

echo "🔁 Applying Kubernetes manifests in all subdirectories..."

for dir in */ ; do
    # Skip hidden directories and non-directories
    [[ "$dir" == .* || ! -d "$dir" ]] && continue

    echo "📂 Deploying ${dir%/}..."
    kubectl apply -f "$dir"
done

echo "✅ All manifests applied."
