#!/usr/bin/env bash
# Validates that every folder under plugins/ is index-only:
#   - must contain README.md
#   - folder name must be kebab-case or reverse-domain
#   - must NOT contain any source code files (only .md and images are allowed)
set -euo pipefail

PLUGINS_DIR="plugins"
errors=0

# File extensions that are allowed in an index-only plugin folder
ALLOWED_PATTERN='\.(md|png|jpg|jpeg|gif|webp|svg)$'

if [ ! -d "$PLUGINS_DIR" ]; then
  echo "ERROR: plugins/ directory not found."
  exit 1
fi

for plugin_dir in "$PLUGINS_DIR"/*/; do
  plugin_name=$(basename "$plugin_dir")

  # Rule 1: Must contain README.md
  if [ ! -f "$plugin_dir/README.md" ]; then
    echo "ERROR: $plugin_name is missing README.md"
    errors=$((errors + 1))
  fi

  # Rule 2: Folder name must be kebab-case or reverse-domain (no uppercase)
  if echo "$plugin_name" | grep -qP '[A-Z]'; then
    echo "ERROR: $plugin_name contains uppercase letters (use kebab-case or reverse-domain)"
    errors=$((errors + 1))
  fi

  # Rule 3: Folder name must not start with a digit
  if echo "$plugin_name" | grep -qP '^\d'; then
    echo "ERROR: $plugin_name starts with a digit"
    errors=$((errors + 1))
  fi

  # Rule 4: Index-only — no source code files allowed anywhere in the plugin folder
  while IFS= read -r -d '' file; do
    rel="${file#"$plugin_dir"}"
    if ! echo "$rel" | grep -qiE "$ALLOWED_PATTERN"; then
      echo "ERROR: $plugin_name contains a non-documentation file: $rel (this is an index-only repo)"
      errors=$((errors + 1))
    fi
  done < <(find "$plugin_dir" -type f -print0 2>/dev/null)
done

if [ "$errors" -gt 0 ]; then
  echo ""
  echo "Found $errors error(s). Please fix before merging."
  exit 1
fi

echo "All plugin folders passed structure check."
