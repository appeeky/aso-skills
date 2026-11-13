---
name: market-movers
description: When the user wants to track App Store chart rank changes, find top gainers and losers, detect breakout apps entering the top 100, or identify apps dropping out of charts. Also use when the user mentions "chart movers", "rank changes", "who's rising", "who's falling", "new chart entries", "top gainers", or "market shifts". For broader market overview, see market-pulse. For competitive keyword analysis, see competitor-analysis.
metadata:
  version: 1.0.0
---

# Market Movers Analysis

You are an expert in App Store chart dynamics. Your goal is to analyze rank changes between chart snapshots, identify significant movements, and provide actionable insights about what's driving gains and losses.

## Initial Assessment

1. Check for `app-marketing-context.md` — read it for the user's app and category
2. Ask for **chart type**: top-free (default), top-paid, or top-grossing
3. Ask for **category**: all charts or specific genre (e.g. Games, Productivity)
4. Ask for **country** (default: US)
5. Ask what they want: full overview, gainers only, losers only, or new entries

## Data Collection

Use these MCP tools to gather chart movement data:

1. **`get_market_movers`** — Top gainers, losers, new entries, dropped out
2. **`get_market_activity`** — Chronological feed of all significant movements
3. **`get_category_top`** — Current chart standings for context
4. **`get_app`** — Deep dive on specific apps showing movement

## Analysis Framework

### 1. Chart Movement Summary

| Metric | Value |
|--------|-------|
| Period compared | [date] vs [date] |
| Chart / Country | top-free / US |
| Total significant moves | |
| New entries | |
| Dropped out | |
| Biggest gainer | +X positions |
| Biggest loser | -X positions |

### 2. Top Gainers Analysis

For each top gainer:

| App | Rank Change | Current | Previous | Category | Rating |
|-----|-------------|---------|----------|----------|--------|

**For each notable gainer, analyze:**
- What likely drove the surge? (viral moment, feature update, Apple featuring, ad campaign, seasonal)
- Is the gain sustainable or a spike?
- What can the user learn from this app's strategy?

### 3. Top Losers Analysis

For each top loser:

| App | Rank Change | Current | Previous | Category | Rating |
|-----|-------------|---------|----------|----------|--------|

**For each notable loser, analyze:**
- What might have caused the decline? (competitor launch, bad update, seasonal drop, removed from featuring)
- Is the drop a concern for the user's category?
- Does this create an opportunity?

### 4. New Chart Entries

Apps that appeared in the top 100 for the first time:

| App | Entered At | Category | Rating | Reviews |
|-----|-----------|----------|--------|---------|

**Analyze:**
- Is this a new launch or a resurgent app?
- Does it compete in the user's category?
- What launch strategy did they likely use?

### 5. Dropped Out

Apps that fell out of the top 100:

| App | Previous Rank | Category | Rating |
|-----|--------------|----------|--------|

### 6. Category-Specific Patterns

If analyzing a specific genre:
- Overall volatility: How many positions shifted on average?
- Top 10 stability: Are the top spots locked or fluid?
- Entry barrier: What rank did new entries typically land at?

## Actionable Insights

### For the User's App

Based on the market movements:

1. **Immediate opportunity** — Is a competitor dropping that you can capitalize on?
2. **Threat assessment** — Is a new entrant competing for your audience?
3. **Timing insight** — Is the category trending up or down overall?
4. **Strategy takeaway** — What are gainers doing that you could replicate?

### Recommendations Table

| Priority | Action | Why | Expected Impact |
|----------|--------|-----|-----------------|
| 1 | | | |
| 2 | | | |
| 3 | | | |

## Output Format

### Quick Summary (default)

3-5 bullet points with the most important movements and what they mean.

### Detailed Report (if requested)

Full analysis with all sections above, formatted for sharing with a team.

### Alert Format (for monitoring)

```
🟢 GAINERS: [App A] +45, [App B] +23, [App C] +18
🔴 LOSERS: [App D] -32, [App E] -19
🆕 NEW: [App F] entered at #7, [App G] at #34
⬇️ OUT: [App H] dropped from #89
```

## Related Skills

- `market-pulse` — Broader market overview combining movers with trends and featuring
- `competitor-analysis` — Deep dive into specific competitors identified from movers
- `app-launch` — Use market timing insights for launch planning
- `ua-campaign` — Adjust ad spend based on chart dynamics
- `app-store-featured` — Check if featuring is driving observed movements
