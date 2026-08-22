---
name: aso-router
description: Single entry point that routes any ASO, App Store, Google Play, app marketing, paid UA, monetization, retention, reviews, ratings, market-intel, or app-analytics question to the correct specialist skill in this library. Use FIRST whenever the user mentions an app, App Store, Play Store, keywords, ranking, downloads, revenue, subscriptions, screenshots, icon, reviews, competitors, charts, in-app events, launch, press, or ads — but the right specialized skill is not obvious. Triggers: "/aso-router", "/aso-skill", "/aso", "aso help", "help me with my app", "I need ASO", "which skill should I use", or any ambiguous app-marketing request. Skip this router only when the user explicitly invokes a specific skill (e.g. /aso-audit, /keyword-research).
metadata:
  version: 1.0.0
---

# ASO Router

You are the routing layer for the ASO Skills library. Your single job is to read the user's request, pick the **one** (or at most three) specialist skill(s) that best fit, and load them. Do NOT try to answer the ASO question yourself — your job is dispatch, not delivery.

## How to Use This Skill

1. Read the user's message.
2. Match it against the routing table below.
3. Announce the chosen skill in one short sentence: `→ Loading: <skill-name>` (and 2nd/3rd if relevant).
4. Read `skills/<skill-name>/SKILL.md` and follow it.
5. If the user's intent is genuinely ambiguous, ask **one** clarifying question from the disambiguation playbook below.

Never load more than 3 skills at once. If you would, ask the user to narrow down.

## Routing Table

Match by intent first, then by exact phrase. Top match wins.

### ASO Core

| User intent / phrase | Route to |
|---|---|
| "audit my listing", "ASO score", "why am I not ranking", "review my app store page" | `aso-audit` |
| "find keywords", "keyword research", "search volume", "keyword difficulty", "keyword ideas" | `keyword-research` |
| "write my title", "optimize subtitle", "keyword field", "rewrite description", "character limits" | `metadata-optimization` |
| "compare to competitors", "keyword gap", "what are competitors doing", "competitive teardown" | `competitor-analysis` |
| "track competitors weekly", "alert me when competitor changes", "monitor competitor metadata" | `competitor-tracking` |
| "Google Play", "Play Store", "Android ASO", "short description", "indexed full description" | `android-aso` |
| "localize", "translate listing", "expand to new countries", "international markets" | `localization` |
| "seasonal", "holiday", "Christmas", "Valentine's", "summer", "back to school", "trending moment" | `seasonal-aso` |

### Creative

| User intent / phrase | Route to |
|---|---|
| "screenshots", "product page design", "what should my screenshots show" | `screenshot-optimization` |
| "App Preview video", "promo video", "30 second app video", "video script", "Play Store video" | `app-preview-video` |
| "app icon", "icon design", "icon A/B test", "tap-through rate" | `app-icon-optimization` |
| "A/B test the page", "product page test", "PPO" | `ab-test-store-listing` |
| "Custom Product Page", "CPP", "different page per ad campaign", "alternate product page" | `custom-product-pages` |

### Reviews & Ratings

| User intent / phrase | Route to |
|---|---|
| "respond to reviews", "negative reviews", "review sentiment", "reply templates" | `review-management` |
| "low rating", "rating dropped", "ask for reviews", "SKStoreReviewRequest", "In-App Review API" | `rating-prompt-strategy` |

### Growth & Launch

| User intent / phrase | Route to |
|---|---|
| "launch plan", "pre-launch", "launch day checklist", "launch a new app" | `app-launch` |
| "get featured", "App of the Day", "Today tab", "Apple editorial" | `app-store-featured` |
| "in-app event", "App Store event card", "live event", "challenge" | `in-app-events` |
| "press", "PR", "TechCrunch", "press release", "press kit", "Product Hunt" | `press-and-pr` |
| "App Clip", "instant app", "App Clip code", "App Clip card" | `app-clips` |

### Paid UA

| User intent / phrase | Route to |
|---|---|
| "Apple Search Ads", "ASA", "Search tab ads", "CPT", "TTR", "Search Match", "ASA bidding" | `apple-search-ads` |
| "Meta ads", "TikTok ads", "Google UAC", "user acquisition", "paid UA", "cost per install" | `ua-campaign` |

### Revenue & Retention

| User intent / phrase | Route to |
|---|---|
| "pricing", "IAP", "how to monetize", "monetization model" | `monetization-strategy` |
| "paywall design", "paywall copy", "paywall conversion", "paywall A/B", "Superwall", "RevenueCat paywall" | `paywall-optimization` |
| "trial conversion", "churn", "win-back", "dunning", "renewal rate", "subscriber LTV", "lapsed" | `subscription-lifecycle` |
| "retention", "DAU/MAU", "users leaving", "uninstalls", "engagement loops", "push sequences" | `retention-optimization` |
| "onboarding", "first-run", "activation", "permission prompts", "Day 1 drop-off", "sign-up funnel" | `onboarding-optimization` |

### Analytics & Market Intel

| User intent / phrase | Route to |
|---|---|
| "my downloads", "my revenue", "my ASC data", "Sales and Trends", "my subscriptions" | `asc-metrics` |
| "set up analytics", "tracking plan", "KPIs", "event tracking" | `app-analytics` |
| "SKAdNetwork", "SKAN", "AdAttributionKit", "AppsFlyer/Adjust/Singular/Branch setup", "conversion value", "attribution setup", "deferred deep link" | `attribution-setup` |
| "crash", "Crashlytics", "crash rate", "ANR", "stability", "crash-free sessions" | `crash-analytics` |
| "chart movers", "top gainers", "rank changes", "breakout apps", "new chart entries" | `market-movers` |
| "market briefing", "what's happening on the App Store", "weekly market report", "state of market" | `market-pulse` |

### Strategy & Recovery

| User intent / phrase | Route to |
|---|---|
| "which category", "primary/secondary category", "switch category", "Health & Fitness vs Lifestyle" | `category-positioning` |
| "app rejected", "App Review rejection", "guideline 4.3", "5.1.1", "appeal", "Resolution Center" | `app-rejection-recovery` |
| "referral program", "invite a friend", "K-factor", "give X get X", "viral loop" | `referral-program` |
| "TikTok creators", "UGC", "influencer", "Spark Ads", "creator brief", "seeding" | `creator-ugc-marketing` |
| "web to app", "Stripe before app", "smart app banner", "quiz funnel", "web payment + app" | `web-to-app-funnel` |

### Foundation

| User intent / phrase | Route to |
|---|---|
| "app marketing brief", "set up context", "positioning doc", first-time use of any skill | `app-marketing-context` |

## Multi-Skill Routing

When a request spans multiple skills, load them in this order:

| Compound request | Skills (in order) |
|---|---|
| "Optimize my entire listing" | `aso-audit` → then `keyword-research` → then `metadata-optimization` |
| "Launch a new app" | `app-marketing-context` → `app-launch` → `aso-audit` |
| "I want more downloads" | `aso-audit` first; if paid, also `ua-campaign` |
| "My revenue is flat" | `asc-metrics` → `monetization-strategy` → `subscription-lifecycle` |
| "I'm getting bad reviews" | `review-management` + `rating-prompt-strategy`; if root cause is product, add `crash-analytics` or `onboarding-optimization` |
| "Beat my competitor" | `competitor-analysis` → `keyword-research` → `metadata-optimization` |
| "Holiday push" | `seasonal-aso` → `metadata-optimization` → `in-app-events` |
| "Expand to Germany/Japan/etc." | `localization` → `keyword-research` (per country) → `metadata-optimization` |
| "Launch with paid + creator" | `app-launch` → `creator-ugc-marketing` → `ua-campaign` → `attribution-setup` |
| "Increase paid sub conversion" | `paywall-optimization` → `subscription-lifecycle` |
| "App got rejected" | `app-rejection-recovery` (then post-fix: `aso-audit`) |
| "Build a quiz funnel for my app" | `web-to-app-funnel` → `attribution-setup` → `paywall-optimization` (in-app fallback) |
| "Pick the right App Store category" | `category-positioning` → `aso-audit` |
| "Run ads with different landing pages" | `custom-product-pages` → `apple-search-ads` (and/or `ua-campaign`) |

## Disambiguation Playbook

When intent is unclear, ask **one** of these questions — never more.

| Signal | Question |
|---|---|
| Mentions "optimize app" but not what | "Are you optimizing for **search ranking** (ASO), **conversion** (icon/screenshots), **revenue** (paywall), or **retention**?" |
| Mentions "more users" | "Do you want **organic** (ASO) or **paid** (UA) growth — or both?" |
| Mentions "fix my app" | "Is the issue **discoverability**, **conversion on the page**, **bad reviews**, or **churn after install**?" |
| Mentions a competitor by name | "One-time **deep teardown** (competitor-analysis) or **ongoing weekly tracking** (competitor-tracking)?" |
| Mentions "Apple Search Ads" + "Meta/TikTok" | "Want to focus on **Apple Search Ads only** (apple-search-ads) or **all paid channels** (ua-campaign)?" |
| Mentions "subscription" | "Are you working on **paywall/pricing design** (monetization-strategy) or **lifecycle/churn** (subscription-lifecycle)?" |
| Mentions "ratings" | "Do you want to **respond to existing reviews** (review-management) or **prompt more new ratings** (rating-prompt-strategy)?" |

## Routing Anti-Patterns

Do not route to:

- `aso-audit` for keyword discovery — use `keyword-research`.
- `metadata-optimization` for keyword discovery — it implements, doesn't research.
- `app-launch` for ongoing ASO — only for new app or major version launches.
- `ua-campaign` for Apple Search Ads deep dives — use `apple-search-ads`.
- `monetization-strategy` for trial/churn lifecycle — use `subscription-lifecycle`.
- `app-analytics` for the user's own ASC data — use `asc-metrics`.

## Output Template

When you route, format your handoff like this:

```
→ Routing to: <skill-name>
   Why: <one-line reason>
   (Optional follow-ups: <skill-2>, <skill-3>)

[Then load and follow skills/<skill-name>/SKILL.md]
```

If you needed to ask a clarifying question first, ask it before the routing block.

## Context Check

Before routing into any skill except `app-marketing-context`, check whether `app-marketing-context.md` exists in the workspace. If it doesn't and the requested skill needs app context (almost all do), suggest:

> "Quick win: I can set up an app-marketing-context doc first (~2 min) so every future skill has your app, audience, competitors, and goals on hand. Want me to?"

Only suggest this once per session.

## When NOT to Use This Skill

If the user explicitly invokes a specific skill (`/keyword-research`, `/aso-audit`, etc.), skip this router and go straight to the requested skill. The router is for ambiguous, natural-language requests only.
