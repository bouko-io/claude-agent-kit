#!/usr/bin/env bash
# Builds the downloadable fallbacks for people who can't use "Add marketplace":
#   dist/claude-agent-kit-plugin.zip  -> Customize > Plugins > Add > Upload plugin
#   dist/skills/<name>.zip            -> Customize > Skills > + > Upload a skill (one by one)
# Formats verified against claude.com/docs/plugins/build and
# support.claude.com/en/articles/12512180 on 2026-09-28 (read, not yet tested by upload).
set -euo pipefail
cd "$(dirname "$0")"
PLUGIN=plugins/claude-agent-kit

cp LICENSE "$PLUGIN/LICENSE"

for dir in "$PLUGIN"/skills/*/; do
  name="$(basename "$dir")"
  file="$dir/SKILL.md"
  [ -f "$file" ] || { echo "missing $file" >&2; exit 1; }
  fm_name="$(sed -n '2,5p' "$file" | sed -n 's/^name: //p')"
  [ "$fm_name" = "$name" ] || { echo "$name: frontmatter name '$fm_name' != folder" >&2; exit 1; }
  [[ "$name" =~ ^[a-z0-9-]{1,64}$ ]] || { echo "$name: invalid name" >&2; exit 1; }
  desc="$(sed -n '2,5p' "$file" | sed -n 's/^description: //p')"
  [ -n "$desc" ] || { echo "$name: missing description" >&2; exit 1; }
  [ "${#desc}" -le 1024 ] || { echo "$name: description ${#desc} chars > 1024" >&2; exit 1; }
done

if command -v claude >/dev/null; then
  claude plugin validate "./$PLUGIN" | tail -1
  claude plugin validate . | tail -1
fi

rm -rf dist && mkdir -p dist/skills
(cd plugins && zip -qr ../dist/claude-agent-kit-plugin.zip claude-agent-kit -x '*.DS_Store')
for dir in "$PLUGIN"/skills/*/; do
  name="$(basename "$dir")"
  (cd "$PLUGIN/skills" && zip -qr "../../../dist/skills/$name.zip" "$name")
done
echo "built dist/claude-agent-kit-plugin.zip + $(ls dist/skills | wc -l) skill zips"
