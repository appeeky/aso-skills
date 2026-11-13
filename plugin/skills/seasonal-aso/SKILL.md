---
name: seasonal-aso
description: When the user wants to optimize their App Store listing for seasonal events, holidays, or trending moments — including keyword opportunities, metadata updates, screenshot theming, and timing strategy. Use when the user mentions "seasonal", "holiday", "Christmas", "New Year", "Valentine's Day", "summer", "back to school", "seasonal keywords", "trending now", "limited time", or wants to capitalize on a calendar event. For general keyword research, see keyword-research. For full metadata rewrites, see metadata-optimization.
metadata:
  version: 1.0.0
---

# Seasonal ASO

You help the user identify and act on seasonal keyword opportunities and listing optimizations tied to calendar events, holidays, and trending moments.

## Key Principle

**Seasonal rankings are competitive and time-sensitive.** Metadata takes 1–3 days to index. Plan changes 2 weeks before the event; revert 3–5 days after peak.

## Seasonal Calendar (iOS — US)

| Event | Peak Window | Keywords to target |
|-------|-------------|-------------------|
| New Year | Dec 26 – Jan 7 | "new year", "resolution", "goals", "habit", "fresh start" |
| Valentine's Day | Feb 1–14 | "valentine", "love", "couples", "romantic", "gift" |
| Spring / Easter | Mar–Apr | "spring", "easter", "refresh", "clean", "declutter" |
| Mother's Day | May 1–12 | "mom", "mother", "family", "gift for mom" |
| Summer | Jun–Aug | "summer", "vacation", "travel", "outdoor", "beach" |
| Back to School | Jul 15 – Sep 10 | "school", "study", "student", "homework", "planner" |
| Halloween | Oct 1–31 | "halloween", "scary", "spooky", "costume", "trick" |
| Black Friday | Nov 20–30 | "deal", "sale", "discount", "shopping", "gift" |
| Christmas | Dec 1–26 | "christmas", "gift", "holiday", "santa", "family" |
| End of Year | Dec 27–31 | "year review", "recap", "goals 2026", "new year" |

## Workflow

### Step 1 — Identify Relevant Event

1. Check for `app-marketing-context.md`
2. Ask: **Which event or season are you targeting?**
3. Ask: **What does your app do?** (to assess keyword relevance)
4. Determine if the event is a good fit — not every seasonal moment applies

### Step 2 — Research Seasonal Keywords

Use Appeeky to find volume on seasonal terms:

```bash
GET /v1/keywords/metrics?keywords=christmas+planner,holiday+tracker
GET /v1/keywords/suggestions?term=christmas&country=us
GET /v1/keywords/trending?country=us&days=7
```

**Filter by:**
- Volume spike (compare to baseline 30 days prior)
- Difficulty < 60 preferred (seasonal keywords are crowded)
- Relevance to your app's core function

### Step 3 — Plan Metadata Changes

**Keyword field (100 chars, iOS):**
- Swap out low-performing keywords for seasonal terms
- Add 2–4 seasonal keywords while preserving your best evergreen terms
- Remove seasonal terms that are irrelevant to your core use case

**Subtitle (30 chars):**
- Consider a seasonal hook if it fits: "Your Holiday Planner" or "New Year Goal Tracker"
- Only change if the original subtitle is not keyword-critical

**Promotional text (170 chars — no review required):**
- Always update for seasonal events — instant, no review
- Use for: seasonal call-to-action, limited-time feature highlights, event tie-ins

**Screenshots:**
- Add a seasonal frame or theme to the first 2 screenshots
- Use `screenshot-optimization` skill for creative guidance

### Step 4 — Timing Checklist

```
Timeline (count back from event date):
- [ ] T-14 days: Research keywords, brief creative
- [ ] T-10 days: Write new metadata + promotional text
- [ ] T-7 days: Submit screenshot updates (no review needed)
- [ ] T-5 days: Submit keyword/subtitle update (review time buffer)
- [ ] T-0: Event peak — monitor rankings daily
- [ ] T+3 days: Revert metadata to evergreen version
- [ ] T+5 days: Revert promotional text
```

## Output Format

### Seasonal Opportunity Brief

```
🎄 Seasonal Opportunity: [Event Name]
   Peak window: [dates]
   Lead time needed: [X days]

Keyword Opportunities:
  High priority (volume spike, <60 difficulty):
  - "[keyword]" — vol [N], diff [N]
  - "[keyword]" — vol [N], diff [N]

  Secondary (relevant but competitive):
  - "[keyword]" — vol [N], diff [N]

Metadata Recommendations:
  Keyword field: [current] → [proposed — 100 chars]
  Subtitle: [keep / change to: "..."]
  Promo text: "[seasonal copy — 170 chars]"

Screenshots: [suggest seasonal theme or keep as-is]

Timeline:
  - Submit metadata by: [date]
  - Submit promo text by: [date]
  - Revert by: [date]
```

## Seasonal vs Evergreen Trade-offs

| Factor | Seasonal | Evergreen |
|--------|----------|-----------|
| Volume | Temporarily very high | Stable |
| Competition | Very high at peak | Moderate |
| Risk | Rankings drop after peak | Consistent |
| Reward | Spike in installs | Sustained growth |

**Rule:** Only swap evergreen keywords that are already underperforming. Never sacrifice a high-ranking keyword for seasonal speculation.

## Trending Moments (Non-Calendar)

For viral/trending moments (news events, viral content, app store trends):
1. Use `GET /v1/keywords/trending?country=us&days=3` to spot emerging terms
2. Act within 24–48 hours (trending windows are short)
3. Only update promotional text (instant, no review)
4. Revert after the trend fades (typically 3–7 days)

## Related Skills

- `keyword-research` — Deep keyword analysis for seasonal candidates
- `metadata-optimization` — Rewrite full metadata with seasonal terms
- `screenshot-optimization` — Design seasonal screenshot themes
- `market-pulse` — Spot trending keywords and market movements in real time
