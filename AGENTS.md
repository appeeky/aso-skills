# Agent Guidelines

This repo contains ASO & App Marketing skills following the [Agent Skills](https://agentskills.io) open standard.

## Structure

```
plugin/skills/<name>/SKILL.md     — Skill instructions (required, <500 lines)
plugin/skills/<name>/references/  — Detailed docs loaded on demand (optional)
plugin/.claude-plugin/            — Claude Code plugin manifest and icon
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

The Claude Code plugin is the `plugin/` folder: `plugin/.claude-plugin/plugin.json` (manifest), `plugin/.claude-plugin/icon.png`, and `plugin/skills/` (auto-discovered). The root `.claude-plugin/marketplace.json` lists it with `"source": "./plugin"`.

- `plugin/` is what Anthropic's directory scans. Only put Markdown, text, JSON, YAML, and PNG/JPEG/GIF/WebP/ICO images in it: no scripts (nothing starting with `#!`), no `.mdx`, no `.DS_Store`
- Link to files outside `plugin/` with full GitHub URLs, since they don't ship with the plugin
- Bump `version` in `plugin/.claude-plugin/plugin.json` on every release, or installed users won't receive the update
- Run `claude plugin validate --strict .` before pushing

## Commits

`feat(skill-name): ...` / `fix(skill-name): ...` / `docs: ...`

Branches: `feature/skill-name`, `fix/skill-name-desc`, `docs/desc`
