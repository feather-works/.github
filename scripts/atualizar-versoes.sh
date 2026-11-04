#!/usr/bin/env bash
# Põe na tabela de apps do README a versão da última release publicada de cada app.
set -euo pipefail
f="$(dirname "$0")/../profile/README.md"
for r in $(grep -oE 'github\.com/feather-works/[a-z-]+\) \| [^|]+ \| v[0-9][0-9.]* \|' "$f" | sed -E 's#^github\.com/feather-works/([a-z-]+)\).*#\1#'); do
  tag=$(gh release view -R "feather-works/$r" --json tagName -q .tagName) || continue
  sed -i -E "/github\.com\/feather-works\/$r\) \|/ s/\| v[0-9][0-9.]* \|/| $tag |/" "$f"
done
