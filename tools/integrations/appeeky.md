# Appeeky — App Intelligence

Real-time App Store metadata, reviews, screenshots, and intelligence data.

**Website:** [appeeky.com](https://appeeky.com)
**Docs:** [docs.appeeky.com](https://docs.appeeky.com)
**Base URL:** `https://api.appeeky.com`

## Authentication

All requests require an API key in the `X-API-Key` header:

```bash
curl -H "X-API-Key: apk_your_key_here" \
  "https://api.appeeky.com/v1/apps/544007664?country=us"
```

## MCP Setup

Add to your Claude Code or Cursor MCP config:

```json
{
  "mcpServers": {
    "appeeky": {
      "url": "https://mcp.appeeky.com/mcp",
      "headers": {
        "Authorization": "Bearer apk_your_key_here"
      }
    }
  }
}
```

## Endpoints

### Get App Metadata

Full App Store or Google Play metadata including title, description, rating, screenshots, and more.

```bash
# iOS (use Numerical App ID)
GET /v1/apps/:id?country=us

# Android (use Package Name)
GET /v1/apps/:package_name?country=us
```

**MCP:** `get_app(app_id_or_package, country)`

**Use in skills:** `aso-audit`, `metadata-optimization`, `competitor-analysis`, `app-marketing-context`

**Response Field Mapping:**

| iOS Field (Apple) | Android Field (Google Play) | Description |
|-------------------|-----------------------------|-------------|
| `trackName` | `title` | The name of the app |
| `description` | `description` | The full app description |
| `artworkUrl512` | `icon` | High-res app icon URL |
| `screenshotUrls` | `screenshots` | Phone screenshot URLs |
| `averageUserRating`| `score` | Star rating (0-5) |
| `userRatingCount` | `ratings` | Total number of ratings |
| `primaryGenreName` | `category` | App category/genre |
| `version` | `version` | Current version string |
| `releaseNotes` | `recentChanges` | "What's New" text |

### App Intelligence Report

Estimated downloads, revenue, similar apps, IAPs, and sentiment analysis.

```bash
GET /v1/apps/:id/intelligence?country=us
```

**MCP:** `get_app_intelligence(app_id, country)`

**Use in skills:** `competitor-analysis`, `monetization-strategy`, `ua-campaign`

**Response includes:**
- `downloads` — Estimated daily downloads with confidence level
- `revenue` — Estimated monthly revenue
- `iaps` — In-app purchase list with prices
- `similarApps` — Competitor apps
- `sentiment` — Review sentiment analysis

### User Reviews

Fetch up to 500 user reviews with sorting and pagination.

```bash
GET /v1/apps/:id/reviews?country=us&sort=mostRecent&limit=50
```

**MCP:** `get_app_reviews(app_id, country, sort, limit)`

**Use in skills:** `review-management`, `retention-optimization`, `competitor-analysis`

**Sort options:** `mostRecent`, `mostHelpful`, `mostCritical`, `mostFavorable`

### App Keywords

All keywords an app currently ranks for, with rank and trend data.

```bash
GET /v1/apps/:id/keywords?country=us
```

**MCP:** `get_app_keywords(app_id, country)`

**Use in skills:** `aso-audit`, `keyword-research`, `competitor-analysis`

### Keyword Rank Trends

Historical rank data for a specific keyword over time.

```bash
GET /v1/apps/:id/keywords/trends?keyword=meditation&country=us&days=30
```

**MCP:** `get_keyword_trends(app_id, keyword, country, days)`

**Use in skills:** `keyword-research`, `aso-audit`

### Country Rankings

App's chart position across all countries simultaneously.

```bash
GET /v1/apps/:id/country-rankings?chart=top-free
```

**MCP:** `get_country_rankings(app_id, chart)`

**Use in skills:** `localization`, `app-analytics`

**Chart types:** `top-free`, `top-paid`, `top-grossing`

### Screenshots

All screenshots split by device type (iPhone/iPad).

```bash
GET /v1/apps/:id/screenshots?country=us
```

**Use in skills:** `screenshot-optimization`, `competitor-analysis`

### Competitor Screenshots

Compare screenshots between an app and its competitors side-by-side.

```bash
GET /v1/apps/:id/screenshots/competitors?country=us
```

**Use in skills:** `screenshot-optimization`, `competitor-analysis`

### Search Apps

Search the App Store by keyword or look up by App ID.

```bash
GET /v1/search?q=meditation&country=us&limit=20
```

**MCP:** `search_apps(query, country, limit)`

**Use in skills:** `app-marketing-context`, `competitor-analysis`, `app-launch`

## Credit Costs

| Endpoint | Credits |
|----------|---------|
| App metadata | 2 |
| Intelligence report | 5 |
| Reviews | 2 |
| App keywords | 3 |
| Keyword trends | 2 |
| Country rankings | 3 |
| Screenshots | 2 |
| Competitor screenshots | 3 |
| Search | 1 |

## Rate Limits

Credits are consumed per request. Check your usage:

```bash
GET /v1/auth/usage
```

## Common Patterns

### Get full competitor profile

```bash
# 1. Get metadata
curl -H "X-API-Key: $KEY" "https://api.appeeky.com/v1/apps/544007664?country=us"

# 2. Get intelligence
curl -H "X-API-Key: $KEY" "https://api.appeeky.com/v1/apps/544007664/intelligence?country=us"

# 3. Get keywords
curl -H "X-API-Key: $KEY" "https://api.appeeky.com/v1/apps/544007664/keywords?country=us"

# 4. Get reviews
curl -H "X-API-Key: $KEY" "https://api.appeeky.com/v1/apps/544007664/reviews?country=us&sort=mostRecent&limit=50"
```

### Monitor your app daily

```bash
# Keywords (are rankings changing?)
curl -H "X-API-Key: $KEY" "https://api.appeeky.com/v1/apps/$APP_ID/keywords?country=us"

# Reviews (any new negative reviews?)
curl -H "X-API-Key: $KEY" "https://api.appeeky.com/v1/apps/$APP_ID/reviews?country=us&sort=mostRecent&limit=10"

# Country rankings (chart position changes?)
curl -H "X-API-Key: $KEY" "https://api.appeeky.com/v1/apps/$APP_ID/country-rankings?chart=top-free"
```
