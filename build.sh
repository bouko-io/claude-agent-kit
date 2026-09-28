#!/usr/bin/env bash
# Builds one ZIP per skill (the format claude.ai "Upload a skill" expects:
# a ZIP containing the skill folder, with SKILL.md inside it) plus one bundle
# holding all of them. Format verified against support.claude.com/en/articles/12512180
# and github.com/anthropics/skills on 2026-09-28 (read, not tested by upload).
set -euo pipefail
cd "$(dirname "$0")"

rm -rf dist && mkdir -p dist

for dir in skills/*/; do
  name="$(basename "$dir")"
  file="$dir/SKILL.md"
  [ -f "$file" ] || { echo "missing $file" >&2; exit 1; }

  # frontmatter checks: name must match folder, lowercase-hyphen only
  fm_name="$(sed -n '2,5p' "$file" | sed -n 's/^name: //p')"
  [ "$fm_name" = "$name" ] || { echo "$name: frontmatter name '$fm_name' != folder" >&2; exit 1; }
  [[ "$name" =~ ^[a-z0-9-]{1,64}$ ]] || { echo "$name: invalid name" >&2; exit 1; }
  desc="$(sed -n '2,5p' "$file" | sed -n 's/^description: //p')"
  [ -n "$desc" ] || { echo "$name: missing description" >&2; exit 1; }
  [ "${#desc}" -le 1024 ] || { echo "$name: description ${#desc} chars > 1024" >&2; exit 1; }

  (cd skills && zip -qr "../dist/$name.zip" "$name")
  echo "built dist/$name.zip"
done

(cd dist && zip -q claude-agent-kit-all-skills.zip ./*.zip)
echo "built dist/claude-agent-kit-all-skills.zip"
