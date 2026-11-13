# Contributing

## Add a Skill

```
plugin/skills/your-skill-name/
└── SKILL.md           # Required, under 500 lines
└── references/        # Optional, for detailed docs
```

Every `SKILL.md` needs YAML frontmatter:

```yaml
---
name: your-skill-name
description: When the user wants to [action]. Also use when the user mentions "[trigger phrases]". For [related task], see [other-skill].
metadata:
  version: 1.0.0
---
```

**Rules:**
- `name` must match the directory name exactly
- Lowercase, hyphens, no consecutive hyphens, 1-64 chars
- Description must include trigger phrases and scope boundaries
- Start the content with a role: "You are an expert in..."
- Include a structured output format
- Cross-reference related skills in a "Related Skills" section

## Improve an Existing Skill

Good contributions:
- Fix outdated App Store guidelines or character limits
- Add missing frameworks or scoring rubrics
- Improve output templates
- Add real-world examples
- Update for new Apple/Google features (In-App Events, Custom Product Pages, etc.)

## Submit

1. Fork → branch (`feature/skill-name` or `fix/skill-name-desc`) → change
2. Run `bash validate-skills.sh` — must pass with 0 errors
3. Open a PR

## Validate

```bash
bash validate-skills.sh
```

Checks: frontmatter exists, name matches directory, description has trigger phrases, line count under 500.
