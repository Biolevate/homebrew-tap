#!/bin/bash

# Script de test pour valider les formules Homebrew
# Usage: ./scripts/test-formula.sh [version]

set -e

VERSION=${1:-"latest"}
FORMULA_FILE="Formula/onizuka-cli.rb"

if [ "$VERSION" != "latest" ]; then
    FORMULA_FILE="Formula/onizuka-cli@$VERSION.rb"
fi

echo "🧪 Testing Homebrew formula: $FORMULA_FILE"

# Vérifier que le fichier existe
if [ ! -f "$FORMULA_FILE" ]; then
    echo "❌ Formula file not found: $FORMULA_FILE"
    exit 1
fi

echo "✅ Formula file exists"

# Valider la syntaxe de la formule
echo "🔍 Validating formula syntax..."
if brew audit --strict "$FORMULA_FILE"; then
    echo "✅ Formula syntax is valid"
else
    echo "❌ Formula syntax validation failed"
    exit 1
fi

# Tester l'installation (en mode dry-run)
echo "🔍 Testing formula installation (dry-run)..."
if brew install --dry-run "$FORMULA_FILE"; then
    echo "✅ Formula installation test passed"
else
    echo "❌ Formula installation test failed"
    exit 1
fi

# Vérifier les URLs
echo "🔍 Checking URLs..."
if grep -q "https://github.com/Biolevate/homebrew-tap/releases/download/" "$FORMULA_FILE"; then
    echo "✅ URLs point to GitHub Releases"
else
    echo "❌ URLs do not point to GitHub Releases"
    exit 1
fi

# Vérifier les SHA256
echo "🔍 Checking SHA256 checksums..."
SHA256_COUNT=$(grep -c "sha256" "$FORMULA_FILE")
if [ "$SHA256_COUNT" -eq 4 ]; then
    echo "✅ All 4 SHA256 checksums are present"
else
    echo "❌ Expected 4 SHA256 checksums, found $SHA256_COUNT"
    exit 1
fi

echo "🎉 All tests passed for $FORMULA_FILE" 