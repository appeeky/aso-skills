# ASO & App Marketing Skills


<a href="https://www.appeeky.com">
  <img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/b5872442-99f9-4e66-8667-96eb03e55f98" />
</a>
<div align="center">
<p align="center">
  <a href="https://x.com/appeeky">
    <img src="https://img.shields.io/badge/Follow on X-000000?style=for-the-badge&logo=x&logoColor=white" alt="Follow on X" />
  </a>
  <a href="https://www.linkedin.com/in/erencanarica/">
    <img src="https://img.shields.io/badge/Follow on LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="Follow on LinkedIn" />
  </a>
  </p>
</div>

AI agent skills for App Store Optimization (ASO) and mobile app marketing. Built for indie developers, app marketers, and growth teams who want **Cursor**, **Claude Code**, or any [Agent Skills](https://agentskills.io)-compatible AI assistant to help with keyword research, metadata optimization, competitor analysis, market intelligence, and app growth.

Powered by real App Store data via the [Appeeky API](https://docs.appeeky.com).

Web, desktop, and mobile app platforms are also available, powered by AI chats and our MCP: [Appeeky Web](https://appeeky.com).

 <a href="https://www.appeeky.com/desktop">
<img width="1706" height="1204" alt="image" src="https://github.com/user-attachments/assets/6ce60216-fd3a-4e97-ab56-00d150f7947a" />
  </a>

## Why This Exists

Most ASO knowledge lives in blog posts, courses, and expensive consultants. We packaged it into skills that any AI agent can use — so you get expert-level ASO guidance directly in your IDE.

Each skill contains battle-tested frameworks, scoring rubrics, and output templates. The agent reads the skill, pulls real data from the App Store (via Appeeky), and gives you actionable recommendations — not generic advice.

## Quick Start

**Cursor** — Settings (Cmd+Shift+J) → Rules → Add Rule → Remote Rule (Github) → paste `https://github.com/eronred/aso-skills`

**Claude Code** — `npx skills add eronred/aso-skills`

**Manual** — `git clone https://github.com/eronred/aso-skills.git && cp -r aso-skills/skills/* .cursor/skills/`

Then ask your agent:

```
"Run an ASO audit for my app (id: 1617391485)"
"Find the best keywords for a meditation app"
"Optimize my App Store title and subtitle"
"How many downloads do I need to reach top 10 in Health & Fitness?"
"What apps are rising in the charts right now?"
"Give me a market briefing for the Games category"
"How are my downloads and revenue trending this month?"
"Help me plan a Christmas In-App Event"
"What seasonal keywords should I add in December?"
"Optimize my Google Play listing"
"My app rating dropped — how do I recover it?"
"Set up a weekly competitor monitoring routine for apps X, Y, Z"
"Help me pitch TechCrunch for my app launch"
"Build an Apple Search Ads campaign structure for my fitness app"
"My app has a crash affecting 2% of sessions — help me triage it"
```

**Don't want to remember 30 skill names?** Just use the router:

```
/aso-skill  →  routes your request to the right specialist skill automatically
```

Or invoke directly: `/aso-audit`, `/keyword-research`, `/metadata-optimization`, `/market-movers`, `/market-pulse`, `/asc-metrics`, `/in-app-events`, `/seasonal-aso`, `/android-aso`, `/apple-search-ads`, `/competitor-tracking`

## Skills

### ASO Core

| Skill | What it does |
|-------|-------------|
| [`aso-audit`](skills/aso-audit) | Scores your listing across 10 factors (0-100), flags problems, gives a prioritized fix list |
| [`keyword-research`](skills/keyword-research) | Finds keywords by volume × difficulty × relevance, groups them into primary/secondary/long-tail |
| [`metadata-optimization`](skills/metadata-optimization) | Writes title, subtitle, keyword field, description — with 3 variants and character counts |
| [`competitor-analysis`](skills/competitor-analysis) | Keyword gaps, creative teardown, positioning map, and specific opportunities to exploit |
| [`seasonal-aso`](skills/seasonal-aso) | Seasonal keyword calendar, metadata swap strategy, timing checklist, and trending-moment tactics |
| [`android-aso`](skills/android-aso) | Google Play-specific ASO — indexed description strategy, short description, Play Experiments, rating recovery |

### Creative & International

| Skill | What it does |
|-------|-------------|
| [`screenshot-optimization`](skills/screenshot-optimization) | 10-slot screenshot strategy with design briefs, text overlay copy, and competitor audit |
| [`app-preview-video`](skills/app-preview-video) | Up to 3 App Preview videos per locale — script template, beat-by-beat structure, Apple/Play specs, rejection avoidance |
| [`app-icon-optimization`](skills/app-icon-optimization) | Icon design principles, A/B testing via PPO/Play Experiments, category differentiation, and icon briefs |
| [`custom-product-pages`](skills/custom-product-pages) | Apple CPPs — variant strategy by audience/channel, ASA + CPP unlock, measurement floor, common mistakes |
| [`review-management`](skills/review-management) | Sentiment analysis, response templates (HEAR framework), rating improvement tactics |
| [`localization`](skills/localization) | Market prioritization matrix, per-country keyword research, cultural adaptation checklist |

### Growth

| Skill | What it does |
|-------|-------------|
| [`app-launch`](skills/app-launch) | 8-week launch timeline with daily checklists, channel strategy, and press outreach templates |
| [`ua-campaign`](skills/ua-campaign) | Apple Search Ads, Meta, Google UAC — campaign structure, bidding, creative specs, budget allocation |
| [`apple-search-ads`](skills/apple-search-ads) | Deep-dive ASA — campaign structure, match types, CPP routing, bid strategy, weekly optimization checklist |
| [`creator-ugc-marketing`](skills/creator-ugc-marketing) | TikTok / IG / YouTube creator program — briefs, sourcing, hook angles, Spark Ads / Partnership Ads, measurement |
| [`referral-program`](skills/referral-program) | In-app referral / invite mechanics — reward sizing, K-factor math, fraud prevention, deep link flow |
| [`web-to-app-funnel`](skills/web-to-app-funnel) | Web → app install funnels (incl. quiz + Stripe + deferred deep link) to bypass App Store fees on subs |
| [`app-store-featured`](skills/app-store-featured) | Featuring readiness score, Apple tech checklist, pitch template, In-App Events calendar |
| [`in-app-events`](skills/in-app-events) | Plan and write App Store In-App Events — copy, image brief, keyword strategy, submission timeline |
| [`app-clips`](skills/app-clips) | App Clip use cases, card design, URL scheme setup, SKOverlay handoff, and measurement |
| [`press-and-pr`](skills/press-and-pr) | Media targeting tiers, pitch templates, press kit checklist, embargo strategy, Product Hunt launch |

### Revenue & Retention

| Skill | What it does |
|-------|-------------|
| [`monetization-strategy`](skills/monetization-strategy) | Pricing tiers, paywall timing, trial structure, category benchmarks |
| [`paywall-optimization`](skills/paywall-optimization) | Paywall conversion funnel diagnostic, 7-element audit, A/B test playbook (Superwall, RevenueCat, Adapty) |
| [`subscription-lifecycle`](skills/subscription-lifecycle) | Trial nurture sequences, voluntary/involuntary churn reduction, dunning, and win-back campaigns |
| [`retention-optimization`](skills/retention-optimization) | Activation → habit → engagement framework, push notification sequences, churn prevention |
| [`onboarding-optimization`](skills/onboarding-optimization) | First-run flow audit, activation event definition, permission prompt timing, sign-up friction reduction |
| [`rating-prompt-strategy`](skills/rating-prompt-strategy) | SKStoreReviewRequest / Play In-App Review timing, pre-prompt survey, version-gating, and rating recovery |

### Analytics & Testing

| Skill | What it does |
|-------|-------------|
| [`app-analytics`](skills/app-analytics) | Event tracking plan, dashboard setup, KPI framework with category benchmarks |
| [`attribution-setup`](skills/attribution-setup) | SKAdNetwork 4 / AdAttributionKit / MMP setup — conversion-value schema design, deep link debug playbook |
| [`ab-test-store-listing`](skills/ab-test-store-listing) | Hypothesis → variant design → sample size → interpretation for App Store A/B tests |
| [`asc-metrics`](skills/asc-metrics) | Analyze your exact App Store Connect data (downloads, revenue, subscriptions, countries) via Appeeky Connect |
| [`crash-analytics`](skills/crash-analytics) | Crashlytics setup, crash triage framework (P0–P3), symbolication, phased release strategy, rating recovery |

### Market Intelligence

| Skill | What it does |
|-------|-------------|
| [`market-movers`](skills/market-movers) | Identifies top chart gainers/losers, new entries, and dropped apps — explains what's driving changes |
| [`market-pulse`](skills/market-pulse) | Full market briefing: chart movements + trending keywords + featured apps + new launches in one view |
| [`competitor-tracking`](skills/competitor-tracking) | Weekly competitor surveillance — metadata changes, keyword shifts, rating trends, chart movement deltas |

### Strategy & Recovery

| Skill | What it does |
|-------|-------------|
| [`category-positioning`](skills/category-positioning) | Pick / switch primary + secondary App Store / Play categories — competitive density, featuring odds, switch-cost analysis |
| [`app-rejection-recovery`](skills/app-rejection-recovery) | Diagnose Apple / Google rejections by guideline, draft Resolution Center responses, decide fix vs appeal |

### Foundation

| Skill | What it does |
|-------|-------------|
| [`aso-router`](skills/aso-router) | **Single entry point** — reads any natural-language ASO request and routes to the right specialist skill. Use when you don't want to remember every skill name |
| [`app-marketing-context`](skills/app-marketing-context) | Creates a context doc (app, audience, competitors, goals) that all other skills reference |

## How It Works

```
You: "Run an ASO audit for Headspace"

Agent:
  1. Reads aso-audit/SKILL.md (framework, scoring rubric, output template)
  2. Calls Appeeky API → fetches metadata, keywords, ratings, competitors
  3. Scores each factor (title: 8/10, subtitle: 6/10, keywords: 4/10...)
  4. Returns: ASO Score Card + Quick Wins + High-Impact Changes + Strategic Recs
```

Skills reference each other — `aso-audit` might suggest running `keyword-research` for deeper analysis, which then feeds into `metadata-optimization` for implementation.

## Installation

### Cursor

| Method | Command |
|--------|---------|
| GitHub Import | Settings → Rules → Add Rule → Remote Rule → `https://github.com/eronred/aso-skills` |
| Project-level | `cp -r aso-skills/skills/* .cursor/skills/` |
| Global | `cp -r aso-skills/skills/* ~/.cursor/skills/` |

### Claude Code

| Method | Command |
|--------|---------|
| CLI | `npx skills add eronred/aso-skills` |
| Specific skills | `npx skills add eronred/aso-skills --skill aso-audit keyword-research` |
| Manual | `cp -r aso-skills/skills/* .claude/skills/` |

### Any Agent

```bash
git submodule add https://github.com/eronred/aso-skills.git .agents/aso-skills
```

Works with any tool that supports the [Agent Skills](https://agentskills.io) standard (`.agents/skills/`, `.cursor/skills/`, `.claude/skills/`, `.codex/skills/`).

## Appeeky Integration

Skills work standalone with general ASO knowledge. Connect [Appeeky](https://docs.appeeky.com/mcp) for real-time App Store data:

```json
{
  "mcpServers": {
    "appeeky": {
      "url": "https://mcp.appeeky.com/mcp",
      "headers": { "Authorization": "Bearer apk_your_key_here" }
    }
  }
}
```

With Appeeky connected, skills can pull live keyword rankings, competitor metadata, download estimates, trending keywords, and featured apps.

### Appeeky Connect — First-Party ASC Data

The `asc-metrics` skill uses **Appeeky Connect**, a new integration that syncs your exact App Store Connect data (downloads, revenue, subscriptions, trials, IAP, and country breakdowns) into Appeeky nightly.

Connect once at [appeeky.com → Settings → Integrations](https://appeeky.com) and then ask:

```
"How are my downloads trending this month?"
"What are my top 5 markets by revenue?"
"Compare this month's subscriptions to last month"
```

Requires Indie plan( coffee price: $8/month) or higher. See [tools/integrations/appeeky-connect.md](tools/integrations/appeeky-connect.md) for the full API reference.

See [tools/REGISTRY.md](tools/REGISTRY.md) for the full capability matrix.

## Contributing

PRs welcome — fix an inaccuracy, improve a framework, or add a new skill. See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

MIT
