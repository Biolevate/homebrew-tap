#!/bin/bash

# Script de nettoyage des anciennes releases et formules
# Usage: ./scripts/cleanup-releases.sh [keep_count]

set -e

KEEP_COUNT=${1:-5}  # Garder les 5 dernières versions par défaut

echo "🧹 Cleaning up old releases (keeping last $KEEP_COUNT versions)..."

# Lister toutes les releases CLI
RELEASES=$(gh release list --repo Biolevate/homebrew-tap --limit 100 | grep "cli-v" | awk '{print $1}')

# Compter le nombre de releases CLI
RELEASE_COUNT=$(echo "$RELEASES" | wc -l)

echo "Found $RELEASE_COUNT CLI releases"

if [ "$RELEASE_COUNT" -le "$KEEP_COUNT" ]; then
    echo "✅ No cleanup needed (only $RELEASE_COUNT releases, keeping $KEEP_COUNT)"
    exit 0
fi

# Calculer combien de releases supprimer
DELETE_COUNT=$((RELEASE_COUNT - KEEP_COUNT))
echo "🗑️  Will delete $DELETE_COUNT old releases"

# Lister les releases à supprimer (les plus anciennes)
RELEASES_TO_DELETE=$(echo "$RELEASES" | tail -n $DELETE_COUNT)

echo "Releases to delete:"
echo "$RELEASES_TO_DELETE"

# Demander confirmation
read -p "Are you sure you want to delete these releases? (y/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Cleanup cancelled"
    exit 1
fi

# Supprimer les releases
for release in $RELEASES_TO_DELETE; do
    echo "🗑️  Deleting release: $release"
    gh release delete "$release" --repo Biolevate/homebrew-tap --yes
done

# Supprimer les formules correspondantes
echo "🗑️  Cleaning up old formula files..."

for release in $RELEASES_TO_DELETE; do
    VERSION=${release#cli-v}
    FORMULA_FILE="Formula/onizuka-cli@$VERSION.rb"
    
    if [ -f "$FORMULA_FILE" ]; then
        echo "🗑️  Deleting formula: $FORMULA_FILE"
        git rm "$FORMULA_FILE" || true
    fi
done

# Commiter les changements
if git diff --staged --quiet; then
    echo "✅ No formula files to remove"
else
    git commit -m "chore: remove old formula files" || true
    git push origin main || true
    echo "✅ Old formula files removed"
fi

echo "🎉 Cleanup completed successfully" 