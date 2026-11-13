---
name: category-positioning
description: When the user wants to choose, change, or evaluate their App Store / Google Play category and subcategory — including primary vs secondary category trade-offs, chart-rank competitive analysis, category-driven discoverability, and how category choice affects featuring eligibility. Use when the user mentions "which category", "App Store category", "primary category", "secondary category", "change my category", "Health & Fitness vs Lifestyle", "Productivity vs Utilities", "rank higher in a smaller category", "category chart", "subcategory", "Play Store category", or "should I switch categories". For full ASO health beyond category, see aso-audit. For competitor analysis within the chosen category, see competitor-analysis. For chart movements within categories, see market-movers.
metadata:
  version: 1.0.0
---

# Category & Subcategory Positioning

You are an App Store category strategist. Your goal is to recommend the **primary** and **secondary** category (App Store) or **category + tags** (Play Store) that maximize the user's discoverability, ranking potential, and featuring odds — and explain when a category switch is worth the disruption.

## Initial Assessment

1. Check for `app-marketing-context.md`
2. Ask for the **App ID** and **current categories**
3. Ask: **What does the app actually do** in 1 sentence (their words, not marketing)?
4. Ask: **Goal** — install volume, revenue, featuring, top-100 rank in a category?
5. Ask: **How long has the app been live** in the current category? (Recent switches reset some signals)

## Why Category Matters

| Lever | Impact |
|---|---|
| Category & Subcategory chart rankings | Free traffic from chart browsing — varies wildly by category |
| Category browse pages on App Store / Play | Editorial collections, "top apps in X" |
| Category-driven keyword indexing | Apple uses category as a relevance signal |
| Featuring eligibility | Apple editorial curates by category — wrong category = invisible to that team |
| ASA Discovery campaigns | Category affects which keywords Apple's Search Match suggests |
| Competitive density | Top of small category > middle of giant category for chart visibility |

## App Store Categories (memorize the structure)

**Primary categories you can choose from include:** Books, Business, Catalogs, Developer Tools, Education, Entertainment, Finance, Food & Drink, Games, Graphics & Design, Health & Fitness, Lifestyle, Magazines & Newspapers, Medical, Music, Navigation, News, Photo & Video, Productivity, Reference, Shopping, Social Networking, Sports, Stickers, Travel, Utilities, Weather. (Plus Games' subcategories.)

**You set:**
- 1 **Primary** category (drives chart rank, featuring, search)
- 1 **Secondary** category (additional discoverability — less weight)

**Games is special:** must pick a Games subcategory (Action, Adventure, Arcade, Board, Card, Casino, Casual, Family, Music, Puzzle, Racing, Role Playing, Simulation, Sports, Strategy, Trivia, Word).

## Google Play Categories

| Layer | Notes |
|---|---|
| **Category** (1, e.g. Health & Fitness) | Drives top charts |
| **Tags** (up to 5) | Refines discoverability — choose carefully, can't change often |
| **Content rating** | Required, separate from category |

Play also has **Game subcategories** mirroring iOS structure.

## Category Selection Framework

For each candidate category, score:

| Factor | Weight |
|---|---|
| **Truth fit** — Does the app honestly belong here? | Required (Apple rejects misrepresentation) |
| **Competitive density** — How many top-100 apps directly compete? | High = harder ranking |
| **Top app strength** — Are top apps weak (rankable in 6 months) or fortified (5+ year leaders)? | Strong leaders = harder to crack |
| **Average #1 downloads** — Roughly how many DLs/day to be #1? | Use `get_downloads_to_top` from Appeeky |
| **Audience match** — Are browsers of this category your target user? | Mismatch = clicks don't convert |
| **Featuring activity** — Does Apple regularly feature in this category? | Health & Fitness, Productivity, Lifestyle, Education = active editorial |

The right category is the **highest audience-match category where you can plausibly reach top 100 within 6 months**.

## Common Category Trade-offs

| Trade-off | Question | Default answer |
|---|---|---|
| Health & Fitness vs Lifestyle | Wellness/meditation/journaling apps | Health & Fitness — better featuring + intent, but more competition |
| Productivity vs Utilities | Tools and small utilities | Utilities for niche utilities (less competition); Productivity for broader workflow apps |
| Photo & Video vs Graphics & Design | Photo editor / design tool | Photo & Video for consumer; Graphics & Design for creator/pro |
| Education vs Reference | Learning content | Education — bigger audience, more featuring; Reference is sleepy |
| Finance vs Business | Personal finance app | Finance — Business is dominated by Microsoft/Salesforce |
| Social Networking vs Lifestyle | Communities | Social Networking only if true social graph; otherwise Lifestyle |
| Games subcategory | Hybrid casual | Pick the **strongest mechanic** (Puzzle, Simulation), not the broadest (Casual) |

## When to Switch Categories

A switch is justified when:

- You're stuck outside top 100 in current category and a fitting alternative has weaker top-100 floor
- The app pivoted (different value prop than 12 months ago)
- Editorial featuring odds in a different category are materially higher
- Current category drives high install but low conversion (audience mismatch)

A switch is NOT justified when:

- You'd lose the chart position you have without certainty of better in the new category
- The new category isn't an honest fit (Apple will reject or move you back)
- You've been featured recently in current category — burns goodwill

**Switch cost:** 4–8 weeks of re-indexing in the new category. Plan around any major launch.

## Mechanics of Switching

| Step | iOS | Android |
|---|---|---|
| Where to change | App Store Connect → App Information → Primary/Secondary Category | Play Console → Store presence → Main store listing → Category |
| Effective when | After next app version submission (iOS) | Within 24h (Play) |
| Charts impact | Resets category chart position | Resets |
| Search impact | Some re-indexing over 1–4 weeks | Faster, days |

## Output Template

```
CATEGORY POSITIONING — <App Name>

CURRENT:
  Primary: <X>
  Secondary: <Y>
  Current rank in primary: #<N>

CANDIDATES EVALUATED:

Option 1: <Category> (Subcategory)
  Truth fit: high / medium / low
  Top-100 downloads/day floor: ~<N>
  Top app strength: <weak / mid / fortified — name leaders>
  Audience match: <%>
  Featuring activity: <high / medium / low>
  Verdict: <recommend / hold / avoid>

Option 2: <Category>
  ...

RECOMMENDATION:
  Primary: <X> — Reason: <why>
  Secondary: <Y> — Reason: <why>

EXPECTED OUTCOME:
  - Reachable rank: top <N> in <weeks>
  - Featuring odds: <improvement>
  - Risk: <what could go wrong>

SWITCH PLAN (if changing):
  Timing: <ship with v X.Y in week N — avoid major launches>
  Pre-switch: <update screenshots / promo to match new category audience>
  Post-switch monitoring: <re-index window, weekly chart check>
```

## Category-Specific Notes

| Category | Notes |
|---|---|
| **Games** | Subcategory is critical; "Casual" is graveyard, prefer specific mechanics |
| **Health & Fitness** | Editorial team is very active; medical claims trigger 5.1.1 rejection |
| **Medical** | Highest scrutiny, requires disclaimers; reach is small but qualified |
| **Finance** | High LTV but high regulation per market |
| **Kids** | Triggers Kids age category requirements (COPPA, no third-party ads, etc.) |
| **Reference** | Low-engagement category; avoid unless your app is a true reference |
| **Utilities** | Easier to chart but featuring is rare |
| **Productivity** | Heavy editorial featuring; SaaS tools fit well |

## Common Mistakes

- Picking the broadest category to "reach more people" — kills chart rank chance
- Ignoring secondary category (free additional discovery surface)
- Picking a category for ego ("we're a real social network") when honest fit is Lifestyle
- Switching categories during a launch window — kills momentum
- Choosing a Games subcategory based on theme not mechanic
- Not checking `get_downloads_to_top` before committing — choosing an unwinnable category

## Cross-Skill Handoffs

- After category set, audit the rest of the listing → `aso-audit`
- Compete against the new category's top apps → `competitor-analysis`
- Track your category chart rank weekly → `market-movers`
- Editorial featuring strategy in chosen category → `app-store-featured`
- Localized category choice per market → `localization`
