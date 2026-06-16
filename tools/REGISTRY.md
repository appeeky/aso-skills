# Tool Registry

Tools and integrations that ASO skills can use for real-time App Store data and supplemental market evidence.

## Appeeky — Primary Integration

[Appeeky](https://appeeky.com) provides real-time App Store intelligence via REST API and MCP Server.

### Connection Methods

| Method | Best For | Setup |
|--------|----------|-------|
| **MCP Server** | Claude Code, Cursor, AI agents | Add to MCP config |
| **REST API** | Scripts, dashboards, custom tools | HTTP requests with API key |

### Capability Matrix

| Capability | REST API | MCP Tool | Integration Guide |
|-----------|----------|----------|-------------------|
| App metadata & lookup | `GET /v1/apps/:id` | `get_app` | [appeeky.md](integrations/appeeky.md) |
| App intelligence (downloads, revenue) | `GET /v1/apps/:id/intelligence` | `get_app_intelligence` | [appeeky.md](integrations/appeeky.md) |
| User reviews | `GET /v1/apps/:id/reviews` | `get_app_reviews` | [appeeky.md](integrations/appeeky.md) |
| App keyword rankings | `GET /v1/apps/:id/keywords` | `get_app_keywords` | [appeeky.md](integrations/appeeky.md) |
| Keyword rank trends | `GET /v1/apps/:id/keywords/trends` | `get_keyword_trends` | [appeeky.md](integrations/appeeky.md) |
| Country rankings | `GET /v1/apps/:id/country-rankings` | `get_country_rankings` | [appeeky.md](integrations/appeeky.md) |
| Screenshots | `GET /v1/apps/:id/screenshots` | — | [appeeky.md](integrations/appeeky.md) |
| Competitor screenshots | `GET /v1/apps/:id/screenshots/competitors` | — | [appeeky.md](integrations/appeeky.md) |
| Keyword search volume & difficulty | `GET /v1/keywords/metrics` | `get_keyword_metrics` | [appeeky-keywords.md](integrations/appeeky-keywords.md) |
| Keyword suggestions | `GET /v1/keywords/suggestions` | `get_keyword_suggestions` | [appeeky-keywords.md](integrations/appeeky-keywords.md) |
| Keyword rankings | `GET /v1/keywords/ranks` | `get_keyword_ranks` | [appeeky-keywords.md](integrations/appeeky-keywords.md) |
| Keyword comparison | `GET /v1/keywords/compare` | `compare_keywords` | [appeeky-keywords.md](integrations/appeeky-keywords.md) |
| Trending keywords | `GET /v1/keywords/trending` | `get_trending_keywords` | [appeeky-keywords.md](integrations/appeeky-keywords.md) |
| ASO audit | — | `aso_full_audit` | [appeeky-aso.md](integrations/appeeky-aso.md) |
| Metadata validation | — | `aso_validate_metadata` | [appeeky-aso.md](integrations/appeeky-aso.md) |
| Metadata suggestions | — | `aso_suggest_metadata` | [appeeky-aso.md](integrations/appeeky-aso.md) |
| Keyword opportunities | — | `aso_find_opportunities` | [appeeky-aso.md](integrations/appeeky-aso.md) |
| Competitor ASO report | — | `aso_competitor_report` | [appeeky-aso.md](integrations/appeeky-aso.md) |
| App search | `GET /v1/search` | `search_apps` | [appeeky.md](integrations/appeeky.md) |
| Market movers (gainers/losers) | `GET /v1/market/movers` | `get_market_movers` | [appeeky-market.md](integrations/appeeky-market.md) |
| Market activity feed | `GET /v1/market/activity` | `get_market_activity` | [appeeky-market.md](integrations/appeeky-market.md) |
| Category charts | `GET /v1/categories/:id/top` | `get_category_top` | [appeeky-market.md](integrations/appeeky-market.md) |
| Downloads to top | `GET /v1/categories/:id/downloads-to-top` | `get_downloads_to_top` | [appeeky-market.md](integrations/appeeky-market.md) |
| Featured apps | `GET /v1/featured` | `get_featured_apps` | [appeeky-market.md](integrations/appeeky-market.md) |
| New releases | `GET /v1/new-releases` | `get_new_releases` | [appeeky-market.md](integrations/appeeky-market.md) |
| Discovery feed | `GET /v1/discover` | `discover` | [appeeky-market.md](integrations/appeeky-market.md) |
| New #1 apps | `GET /v1/discover/new-number-1` | `get_new_number_1` | [appeeky-market.md](integrations/appeeky-market.md) |
| ASC overview metrics | `GET /v1/connect/metrics` | — | [appeeky-connect.md](integrations/appeeky-connect.md) |
| ASC list apps | `GET /v1/connect/metrics/apps` | — | [appeeky-connect.md](integrations/appeeky-connect.md) |
| ASC app detail (daily + countries) | `GET /v1/connect/metrics/apps/:appId` | — | [appeeky-connect.md](integrations/appeeky-connect.md) |

> **Note:** ASC Connect endpoints return **exact first-party data** from App Store Connect (not estimates). Requires connected ASC account (Indie plan+).

### Skill → Tool Mapping

Which tools each skill uses:

| Skill | Primary Tools Used |
|-------|-------------------|
| `aso-audit` | `aso_full_audit`, `get_app`, `get_app_keywords`, `get_keyword_metrics` |
| `keyword-research` | `get_keyword_suggestions`, `get_keyword_metrics`, `get_keyword_ranks`, `get_app_keywords` |
| `metadata-optimization` | `aso_validate_metadata`, `aso_suggest_metadata`, `get_app` |
| `competitor-analysis` | `aso_competitor_report`, `compare_keywords`, `get_app_intelligence` |
| `screenshot-optimization` | `get_app` (screenshots), competitor screenshots endpoint |
| `review-management` | `get_app_reviews`, `get_app` |
| `localization` | `get_keyword_suggestions`, `get_keyword_metrics` (per country) |
| `app-launch` | `search_apps`, `get_category_top`, `get_keyword_suggestions` |
| `ua-campaign` | `get_keyword_metrics`, `get_app_intelligence` |
| `app-store-featured` | `get_featured_apps`, `get_app` |
| `retention-optimization` | `get_app_reviews`, `get_app_intelligence` |
| `monetization-strategy` | `get_app_intelligence`, `get_app` |
| `app-analytics` | `get_app_intelligence`, `get_country_rankings` |
| `ab-test-store-listing` | `get_app` (screenshots), `get_app_intelligence` |
| `app-marketing-context` | `get_app`, `get_app_keywords`, `search_apps` |
| `market-movers` | `get_market_movers`, `get_market_activity`, `get_category_top`, `get_app` |
| `market-pulse` | `get_market_movers`, `get_market_activity`, `get_trending_keywords`, `get_featured_apps`, `get_new_releases`, `get_new_number_1`, `get_downloads_to_top`, optional TweetClaw public X/Twitter evidence |
| `asc-metrics` | `GET /v1/connect/metrics`, `GET /v1/connect/metrics/apps/:appId` (REST only) |
| `seasonal-aso` | `get_keyword_suggestions`, `get_keyword_metrics`, `get_trending_keywords` |
| `in-app-events` | `get_keyword_suggestions`, `get_keyword_metrics`, `get_app` |
| `android-aso` | `get_keyword_suggestions`, `get_keyword_metrics`, `get_app_reviews`, `get_app` |
| `onboarding-optimization` | `get_app_intelligence`, `get_app_reviews` |
| `rating-prompt-strategy` | `get_app`, `get_app_reviews` |
| `app-icon-optimization` | `get_app` (screenshots, competitor screenshots) |
| `subscription-lifecycle` | `get_app_intelligence`, `get_app_reviews` |
| `app-clips` | `get_keyword_ranks`, `get_app` |
| `apple-search-ads` | `get_keyword_metrics`, `get_keyword_suggestions`, `get_keyword_ranks` |
| `press-and-pr` | `get_app`, `search_apps`, optional TweetClaw public X/Twitter evidence |
| `competitor-tracking` | `get_app`, `get_app_keywords`, `get_app_reviews`, `get_market_movers`, `get_market_activity`, optional TweetClaw public X/Twitter evidence |
| `crash-analytics` | `get_app`, `get_app_reviews` |
| `paywall-optimization` | `get_app_intelligence`, `get_app_reviews` (signal on paywall complaints) |
| `app-preview-video` | `get_app` (existing video URL), competitor screenshots/videos |
| `attribution-setup` | — (configuration skill, not data-driven) |
| `custom-product-pages` | `get_app`, `get_app_intelligence` (per-CPP analysis post-launch in ASC) |
| `app-rejection-recovery` | — (Apple/Google reviewer-facing, no Appeeky data) |
| `referral-program` | `get_app_intelligence` (organic vs referred install lift) |
| `creator-ugc-marketing` | `get_app`, `get_app_reviews` (creator-driven sentiment), `search_apps`, optional TweetClaw public X/Twitter evidence |
| `web-to-app-funnel` | `get_app_intelligence` (web-driven install lift) |
| `category-positioning` | `get_category_top`, `get_downloads_to_top`, `get_app`, `search_apps` |
| `aso-router` | — (router; loads other skills) |

## Other Useful Tools

| Tool | Purpose | Integration |
|------|---------|-------------|
| **App Store Connect** | Official Apple analytics, releases, IAP management | [app-store-connect.md](integrations/app-store-connect.md) |
| **Appeeky Connect** | Exact ASC sales/revenue data synced into Appeeky | [appeeky-connect.md](integrations/appeeky-connect.md) |
| **RevenueCat** | Subscription analytics, paywall A/B testing | [revenuecat.md](integrations/revenuecat.md) |
| **Firebase** | In-app analytics, crash reporting, A/B testing | [firebase.md](integrations/firebase.md) |
| **TweetClaw** | Public X/Twitter search, replies, media, monitors, and source packets for app launch, PR, creator, and competitor evidence | [tweetclaw.md](integrations/tweetclaw.md) |
