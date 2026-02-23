#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="${1:-.}"
SKILL_FILE="$ROOT_DIR/SKILL.md"
AGENT_FILE="$ROOT_DIR/agents/openai.yaml"

fail() {
  echo "ERROR: $1" >&2
  exit 1
}

[[ -f "$SKILL_FILE" ]] || fail "Missing $SKILL_FILE"
[[ -f "$AGENT_FILE" ]] || fail "Missing $AGENT_FILE"

# Extract YAML frontmatter between first two --- delimiters.
frontmatter="$(
  awk '
    BEGIN { n=0 }
    NR==1 && $0=="---" { n=1; next }
    n==1 && $0=="---" { exit }
    n==1 { print }
  ' "$SKILL_FILE"
)"

[[ -n "$frontmatter" ]] || fail "Invalid or missing frontmatter in $SKILL_FILE"

key_count="$(printf '%s\n' "$frontmatter" | grep -E '^[a-zA-Z0-9_-]+:' | wc -l | tr -d ' ')"
[[ "$key_count" -eq 2 ]] || fail "Frontmatter must contain exactly 2 keys: name and description"

name="$(printf '%s\n' "$frontmatter" | sed -n 's/^name:[[:space:]]*//p' | head -n1)"
description="$(printf '%s\n' "$frontmatter" | sed -n 's/^description:[[:space:]]*//p' | head -n1)"

[[ -n "$name" ]] || fail "Missing frontmatter key: name"
[[ -n "$description" ]] || fail "Missing frontmatter key: description"
[[ "$name" =~ ^[a-z0-9-]{1,64}$ ]] || fail "Invalid skill name '$name' (use lowercase letters, digits, hyphens; max 64)"

# Ensure no unexpected keys exist.
unexpected="$(
  printf '%s\n' "$frontmatter" \
    | grep -E '^[a-zA-Z0-9_-]+:' \
    | cut -d: -f1 \
    | grep -Ev '^(name|description)$' || true
)"
[[ -z "$unexpected" ]] || fail "Unexpected frontmatter key(s): $unexpected"

grep -q '^version:[[:space:]]*1[[:space:]]*$' "$AGENT_FILE" || fail "agents/openai.yaml must include 'version: 1'"
grep -q '^interface:[[:space:]]*$' "$AGENT_FILE" || fail "agents/openai.yaml must include 'interface:'"
grep -q '^[[:space:]]*display_name:[[:space:]]*' "$AGENT_FILE" || fail "agents/openai.yaml missing interface.display_name"
grep -q '^[[:space:]]*short_description:[[:space:]]*' "$AGENT_FILE" || fail "agents/openai.yaml missing interface.short_description"
grep -q '^[[:space:]]*default_prompt:[[:space:]]*' "$AGENT_FILE" || fail "agents/openai.yaml missing interface.default_prompt"

echo "OK: skill metadata validation passed for $ROOT_DIR"
