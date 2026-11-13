#!/bin/bash
# Validate all skills against the Agent Skills specification

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'

ERRORS=0
WARNINGS=0

for skill_dir in plugin/skills/*/; do
  skill_name=$(basename "$skill_dir")
  skill_file="$skill_dir/SKILL.md"

  if [ ! -f "$skill_file" ]; then
    echo -e "${RED}ERROR: $skill_name — missing SKILL.md${NC}"
    ERRORS=$((ERRORS + 1))
    continue
  fi

  # Extract frontmatter
  frontmatter=$(sed -n '/^---$/,/^---$/p' "$skill_file" | sed '1d;$d')

  # Check name field exists
  fm_name=$(echo "$frontmatter" | grep -E '^name:' | sed 's/name: *//')
  if [ -z "$fm_name" ]; then
    echo -e "${RED}ERROR: $skill_name — missing 'name' in frontmatter${NC}"
    ERRORS=$((ERRORS + 1))
  elif [ "$fm_name" != "$skill_name" ]; then
    echo -e "${RED}ERROR: $skill_name — name '$fm_name' does not match directory '$skill_name'${NC}"
    ERRORS=$((ERRORS + 1))
  fi

  # Validate name format
  if [ -n "$fm_name" ]; then
    if ! echo "$fm_name" | grep -qE '^[a-z0-9]([a-z0-9-]{0,62}[a-z0-9])?$'; then
      echo -e "${RED}ERROR: $skill_name — name does not match pattern ^[a-z0-9]([a-z0-9-]{0,62}[a-z0-9])?$${NC}"
      ERRORS=$((ERRORS + 1))
    fi
    if echo "$fm_name" | grep -q '\-\-'; then
      echo -e "${RED}ERROR: $skill_name — name contains consecutive hyphens${NC}"
      ERRORS=$((ERRORS + 1))
    fi
  fi

  # Check description field
  fm_desc=$(echo "$frontmatter" | grep -E '^description:' | sed 's/description: *//')
  if [ -z "$fm_desc" ]; then
    echo -e "${RED}ERROR: $skill_name — missing 'description' in frontmatter${NC}"
    ERRORS=$((ERRORS + 1))
  else
    desc_len=${#fm_desc}
    if [ "$desc_len" -gt 1024 ]; then
      echo -e "${RED}ERROR: $skill_name — description exceeds 1024 characters ($desc_len)${NC}"
      ERRORS=$((ERRORS + 1))
    fi
    if ! echo "$fm_desc" | grep -qiE '(when|mention|use)'; then
      echo -e "${YELLOW}WARNING: $skill_name — description should include trigger phrases (when/mention/use)${NC}"
      WARNINGS=$((WARNINGS + 1))
    fi
  fi

  # Check line count
  line_count=$(wc -l < "$skill_file" | tr -d ' ')
  if [ "$line_count" -gt 500 ]; then
    echo -e "${YELLOW}WARNING: $skill_name — SKILL.md has $line_count lines (recommended: <500)${NC}"
    WARNINGS=$((WARNINGS + 1))
  fi

  echo -e "${GREEN}PASS: $skill_name ($line_count lines)${NC}"
done

echo ""
echo "Results: $ERRORS errors, $WARNINGS warnings"

if [ "$ERRORS" -gt 0 ]; then
  exit 1
fi
