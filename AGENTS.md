# Agent Guidelines

This repo contains ASO & App Marketing skills following the [Agent Skills](https://agentskills.io) open standard.

## Structure

```
skills/<name>/SKILL.md     — Skill instructions (required, <500 lines)
skills/<name>/references/  — Detailed docs loaded on demand (optional)
tools/integrations/        — API integration guides (Appeeky, Firebase, etc.)
tools/REGISTRY.md          — Capability matrix: which skill uses which tool
```

Compatible directories: `.cursor/skills/`, `.agents/skills/`, `.claude/skills/`, `.codex/skills/`

## SKILL.md Format

```yaml
---
name: skill-name          # Must match directory, lowercase+hyphens, 1-64 chars
description: ...          # Trigger phrases + scope boundaries, 1-1024 chars
metadata:
  version: 1.0.0
---
```

Description drives discovery — agent reads all descriptions to decide which skill to load. Include "When the user wants to...", trigger keywords, and "For X, see Y skill" boundaries.

## Writing Style

- Direct, actionable, second person
- Tables for comparisons, numbered lists for steps
- Bold for key terms, code blocks for examples
- No filler, no hedging

## App Store Reference

**iOS limits:** Title 30 chars, Subtitle 30 chars, Keyword field 100 chars (comma-separated, no spaces), Description 4000 chars (not indexed for search), Promotional text 170 chars.

**Google Play limits:** Title 30 chars, Short description 80 chars, Full description 4000 chars (indexed for search).

**Key rules:** Title has highest keyword weight. Don't repeat keywords across fields. Use singular forms. Don't include "app" or category names in keyword field.

## Claude Code Plugin

The repo is also a Claude Code plugin marketplace: `.claude-plugin/plugin.json` (plugin manifest) and `.claude-plugin/marketplace.json` (catalog). Skills in `skills/` are auto-discovered.

- Bump `version` in `plugin.json` on every release, or installed users won't receive the update
- Run `claude plugin validate --strict .` before pushing

## Commits

`feat(skill-name): ...` / `fix(skill-name): ...` / `docs: ...`

Branches: `feature/skill-name`, `fix/skill-name-desc`, `docs/desc`
