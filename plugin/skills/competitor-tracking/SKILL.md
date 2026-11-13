---
name: competitor-tracking
description: When the user wants to monitor competitor apps on an ongoing basis — tracking metadata changes, keyword shifts, screenshot updates, rating trends, or new features. Use when the user mentions "competitor monitoring", "track competitors", "competitor alert", "competitor changed their title", "watch a competitor app", "competitor weekly report", "competitive intelligence", or "what changed in competitor's listing". For a one-time deep competitive analysis, see competitor-analysis. For market-wide chart movements, see market-movers.
metadata:
  version: 1.0.0
---

# Competitor Tracking

You set up and run ongoing competitor surveillance — catching metadata changes, keyword shifts, rating drops, and new feature launches before they impact your rankings.

## One-Time Analysis vs Ongoing Tracking

| | `competitor-analysis` skill | This skill (`competitor-tracking`) |
|---|---|---|
| **Frequency** | One-time deep dive | Weekly/monthly recurring |
| **Output** | Strategy document | Change log + alerts |
| **Focus** | Gap analysis, positioning | What changed and why it matters |
| **Data** | Snapshot | Delta (before vs after) |

## Setup: Define Your Watchlist

1. Check for `app-marketing-context.md`
2. Ask: **Who are your top 3–5 competitors?** (get App IDs if possible)
3. Ask: **How often do you want to review?** (weekly recommended)
4. Ask: **What are you most concerned about?** (keywords, ratings, creative, pricing)

Use Appeeky to identify competitors if unknown:
```bash
GET /v1/keywords/ranks?keyword=meditation&country=us&limit=10
GET /v1/apps/:id/intelligence  # check competitors array
```

## What to Track

### Metadata Changes

Check weekly using Appeeky:
```bash
GET /v1/apps/:id  # title, subtitle, description
```

Watch for:
- **Title changes** — new keyword being targeted, repositioning
- **Subtitle changes** — testing new hooks or keywords
- **Description changes** — messaging strategy shift (Google Play especially)
- **Screenshot updates** — new creative direction or A/B test winner shipped

### Keyword Ranking Changes

```bash
GET /v1/apps/:id/keywords  # their ranking keywords
GET /v1/keywords/ranks?keyword=[shared keyword]  # who's ranking where
```

Watch for:
- Keywords they're newly ranking for (they optimized for this — should you?)
- Keywords they dropped (opportunity to capture)
- A competitor jumping above you for a shared keyword

### Ratings and Reviews

```bash
GET /v1/apps/:id/reviews?sort=recent&limit=20
GET /v1/apps/:id  # current rating
```

Watch for:
- Rating drop (they shipped a bad update — opportunity to highlight your stability)
- Surge of 1-stars around a specific complaint (user pain point you could solve)
- New positive reviews praising a feature you don't have

### Chart Positions

```bash
GET /v1/market/movers?genre=[genre_id]&country=us
GET /v1/categories/:id/top?country=us&limit=25
```

Watch for:
- A competitor entering or exiting top 10 in your category
- New competitor entering your space from a chart rise

### Pricing and Paywall

Manually check every 4–6 weeks:
- Trial length changes
- Price changes (lower = aggressive growth; higher = LTV optimization)
- New paywall format or plans

## Weekly Competitive Report Template

Run this analysis every Monday:

```
Competitive Update — Week of [Date]

Apps tracked: [list names]

CHANGES DETECTED:
━━━━━━━━━━━━━━━━━
[Competitor Name]
  Metadata: [changed / no change]
    → [specific change if any]
  Top keywords: [gained X / lost Y / stable]
  Rating: [X.X → X.X] ([+/-N] ratings this week)
  Chart position: [#N → #N in category]
  New reviews theme: [if notable]

[Repeat per competitor]

OPPORTUNITIES IDENTIFIED:
1. [Competitor X dropped keyword Y — consider targeting it]
2. [Competitor X has surge of complaints about Z — your strength]
3. [Competitor X raised price — positioning opportunity]

THREATS:
1. [Competitor X now ranks #3 for [keyword] — we're at #8]
2. [New entrant spotted: [name] — check their metadata]

ACTION ITEMS:
1. [Specific response to a change]
2. [Keyword to target based on competitor gap]
```

## Monthly Deep-Dive Triggers

Run a full `competitor-analysis` when:
- A competitor jumps 10+ positions in the category chart
- A competitor changes their title (signals major repositioning)
- A new competitor enters the top 10 in your category
- Your ranking drops on a keyword a competitor recently targeted

## Automation Options

### Manual (recommended for small teams)

Set a calendar reminder. Run the Appeeky API calls above. Fill the template.

### Semi-automated

Build a script that calls Appeeky weekly and diffs results:

```bash
#!/bin/bash
APPS=("6759740679" "987654321" "111222333")
KEY="apk_your_key"

for APP_ID in "${APPS[@]}"; do
  echo "=== $APP_ID ==="
  curl -s "https://api.appeeky.com/v1/apps/$APP_ID" \
    -H "X-API-Key: $KEY" | jq '.data | {title, subtitle, rating, reviewCount}'
done
```

Store results weekly and diff with the previous week's output.

### Appeeky MCP (in Claude/Cursor)

Ask your agent each Monday:
```
"Run a competitor check on apps [ID1], [ID2], [ID3] and 
compare their metadata and top keywords to last week."
```

The agent will use `get_app`, `get_app_keywords`, `get_app_reviews` to produce the report.

## Competitive Response Playbook

| What changed | Response |
|-------------|---------|
| Competitor targets your #1 keyword in title | Defend: check your metadata is fully optimized; consider increasing ASA bids |
| Competitor drops a keyword you share | Opportunity: double down, increase bid in ASA |
| Competitor upgrades screenshots | Audit yours — are they still best in category? |
| Competitor rating drops below 4.0 | Mention your rating in promotional text while gap is visible |
| Competitor launches a feature you don't have | Note for roadmap; meanwhile highlight your differentiating strengths |
| New competitor enters top 10 | Run full `competitor-analysis` on them |

## Related Skills

- `competitor-analysis` — Deep one-time competitive strategy
- `keyword-research` — Act on the keyword gaps you find
- `market-movers` — Catch chart-level competitor movements automatically
- `apple-search-ads` — Respond to competitor keyword moves with ASA bids
- `aso-audit` — Run on yourself after finding competitive gaps
