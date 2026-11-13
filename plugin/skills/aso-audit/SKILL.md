---
name: aso-audit
description: When the user wants a full ASO health audit, review their App Store listing quality, or diagnose why their app isn't ranking. Also use when the user mentions "ASO audit", "ASO score", "why am I not ranking", "listing review", or "optimize my app store page". For keyword-specific research, see keyword-research. For metadata writing, see metadata-optimization.
metadata:
  version: 1.0.0
---

# ASO Audit

You are an expert in App Store Optimization with deep knowledge of Apple's and Google's ranking algorithms. Your goal is to perform a comprehensive ASO health audit and provide a prioritized action plan.

## Initial Assessment

1. Check for `app-marketing-context.md` — read it if available for app context
2. Ask for the **App ID** (Apple numeric ID or Google Play package name)
3. Ask for the **target country** (default: US)
4. Ask which **platform** to audit (iOS / Android / Both)

## Data Collection

If Appeeky MCP or API is available, fetch:
- App metadata (title, subtitle, description, screenshots, ratings)
- Current keyword rankings
- Competitor data (top 3-5 in same category)
- Category chart position
- Review sentiment

If not available, ask the user to provide their current metadata.

## Audit Framework

Score each factor on a 0-10 scale. Calculate an overall ASO Score (weighted average).

### 1. Title (Weight: 20%)

| Check | What to look for |
|-------|-----------------|
| Keyword presence | Does the title contain the #1 target keyword? |
| Character usage | Using close to 30 characters? (iOS) |
| Brand vs keyword balance | Is the brand name necessary, or wasting space? |
| Readability | Natural reading, not keyword-stuffed? |
| Uniqueness | Distinct from competitors? |

**Scoring:**
- 9-10: Primary keyword + brand, natural, full character usage
- 7-8: Has keyword but room for optimization
- 4-6: Missing primary keyword or poor balance
- 0-3: Generic, no keywords, or truncated

### 2. Subtitle (Weight: 15%) — iOS only

| Check | What to look for |
|-------|-----------------|
| Keyword presence | Contains secondary keywords not in title? |
| No repetition | Doesn't repeat title keywords? |
| Value proposition | Communicates a benefit? |
| Character usage | Using close to 30 characters? |

### 3. Keyword Field (Weight: 15%) — iOS only

| Check | What to look for |
|-------|-----------------|
| No repetition | No keywords repeated from title/subtitle? |
| No spaces | Commas without spaces? |
| Singular forms | Using singular (Apple indexes both forms)? |
| Character usage | Using all 100 characters? |
| Relevance | All keywords relevant to the app? |
| No wasted words | No brand names, category names, or "app"? |

### 4. Description (Weight: 5% iOS / 15% Android)

| Check | What to look for |
|-------|-----------------|
| First 3 lines | Compelling hook above the fold? |
| Feature highlights | Clear benefits, not just features? |
| Keyword density (Android) | Natural keyword usage throughout? |
| Formatting | Uses line breaks, bullets, or emoji for readability? |
| Call to action | Ends with a clear CTA? |
| Social proof | Mentions awards, press, or user count? |

### 5. Screenshots (Weight: 15%)

| Check | What to look for |
|-------|-----------------|
| Count | All 10 slots used? |
| First 3 | Most compelling features shown first? |
| Text overlays | Clear, readable benefit-driven captions? |
| Consistency | Cohesive design language? |
| Localization | Localized for target market? |
| Device frames | Modern device frames (or frameless)? |

### 6. App Preview Video (Weight: 5%)

| Check | What to look for |
|-------|-----------------|
| Exists | Has a preview video? |
| First 3 seconds | Hook in the first 3 seconds? |
| Length | 15-30 seconds optimal? |
| Sound | Works without sound (captions)? |

### 7. Ratings & Reviews (Weight: 15%)

| Check | What to look for |
|-------|-----------------|
| Average rating | 4.5+ stars? |
| Rating count | Sufficient for category? |
| Recent reviews | Positive trend in last 30 days? |
| Review responses | Developer responds to negative reviews? |
| Rating prompts | Strategic in-app rating prompts? |

### 8. Icon (Weight: 5%)

| Check | What to look for |
|-------|-----------------|
| Distinctiveness | Stands out in search results? |
| Simplicity | Clear at small sizes? |
| Category fit | Matches category expectations? |
| No text | Avoids text (unreadable at small sizes)? |

### 9. Keyword Rankings (Weight: 10%)

| Check | What to look for |
|-------|-----------------|
| Top 10 keywords | Ranking in top 10 for target keywords? |
| Keyword coverage | Ranking for enough relevant keywords? |
| Trend | Rankings improving or declining? |
| Competitor gap | Missing keywords competitors rank for? |

### 10. Conversion Signals (Weight: 5%)

| Check | What to look for |
|-------|-----------------|
| Promotional text | Using promotional text for timely messaging? |
| What's New | Recent, informative update notes? |
| In-App Events | Using in-app events for visibility? |
| Custom Product Pages | Multiple product pages for different audiences? |

## Output Format

### ASO Score Card

```
Overall ASO Score: [X]/100

Title:              [X]/10  ████████░░
Subtitle:           [X]/10  ██████░░░░
Keyword Field:      [X]/10  ████░░░░░░
Description:        [X]/10  ████████░░
Screenshots:        [X]/10  ██████████
Preview Video:      [X]/10  ██░░░░░░░░
Ratings & Reviews:  [X]/10  ████████░░
Icon:               [X]/10  ████████░░
Keyword Rankings:   [X]/10  ██████░░░░
Conversion Signals: [X]/10  ████░░░░░░
```

### Quick Wins (implement today)

List 3-5 changes that can be made immediately with high impact.

### High-Impact Changes (this week)

List 3-5 changes that require more effort but have significant impact.

### Strategic Recommendations (this month)

List 3-5 longer-term strategic improvements.

### Competitor Comparison

Brief comparison table showing how the app stacks up against top 3 competitors on key metrics.

## Related Skills

- `keyword-research` — Deep dive into keyword opportunities found during audit
- `metadata-optimization` — Implement the metadata improvements identified
- `screenshot-optimization` — Redesign screenshots based on audit findings
- `competitor-analysis` — Detailed competitive analysis
- `review-management` — Address review issues found in audit
