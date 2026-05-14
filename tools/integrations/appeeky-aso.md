# Appeeky — ASO Tools

Automated ASO audit, metadata validation, optimization suggestions, and competitor reports.

**Base URL:** `https://api.appeeky.com`
**Auth:** `X-API-Key` header (REST) or `Authorization: Bearer` (MCP)

These tools are available exclusively through the MCP Server. They combine multiple data sources into actionable ASO insights.

## MCP Tools

### ASO Full Audit

Comprehensive ASO health audit with a 0-100 score, 9-factor breakdown, and prioritized recommendations.

**MCP:** `aso_full_audit(app_id, country)`

**Use in skills:** `aso-audit`

**What it analyzes:**
- Title optimization (keyword presence, character usage)
- Subtitle optimization (keyword coverage, no repetition)
- Description quality (hook, structure, readability)
- Screenshot count and quality signals
- Rating and review health
- Keyword field efficiency
- Update frequency
- Localization coverage
- Competitive positioning

**Output includes:**
- Overall score (0-100)
- Per-factor scores with explanations
- Quick wins (implement today)
- High-impact recommendations (this week)
- Strategic improvements (this month)

**Example prompts for Claude:**
```
# iOS Audit
Run a full ASO audit for Headspace (id: 493145008) in the US market.

# Android Audit
Run a full ASO audit for Spotify (package: com.spotify.music) in the UK.
```

### Validate Metadata

Check title, subtitle, and keyword field against Apple and Google character limits and best practices.

**MCP:** `aso_validate_metadata(title, subtitle, keyword_field, platform)`

**Use in skills:** `metadata-optimization`

**What it checks:**
- Character count vs limits (30/30/100 for iOS)
- Keyword repetition across fields
- Wasted characters (spaces after commas, brand names in keyword field)
- Plural forms that should be singular
- Common mistakes (including "app", category names)

**Example prompt for Claude:**
```
Validate this metadata for iOS:
Title: "Calm - Sleep & Meditation"
Subtitle: "Relax, Focus & Sleep Better"
Keywords: "mindfulness,breathing,stress,anxiety,relaxation,sleep sounds,white noise,nature"
```

### Suggest Metadata

Generate optimized metadata suggestions based on target keywords and competitive analysis.

**MCP:** `aso_suggest_metadata(app_id, target_keywords, country)`

**Use in skills:** `metadata-optimization`, `keyword-research`

**What it provides:**
- 3 title options with keyword analysis
- 3 subtitle options
- Optimized keyword field (100 chars, no repetition)
- Character counts for each suggestion
- Keyword coverage matrix

**Example prompts for Claude:**
```
# iOS Suggestions
Suggest optimized metadata for my meditation app (id: 544007664).

# Android Suggestions
Suggest optimized metadata for my fitness app (package: com.fitbit.FitbitMobile).
Target keywords: workout, tracker, heart rate, weight loss.
```

### Find Keyword Opportunities

Discover untapped keywords with high search volume and low difficulty.

**MCP:** `aso_find_opportunities(app_id, country, limit)`

**Use in skills:** `keyword-research`, `aso-audit`

**What it returns:**
- Keywords sorted by opportunity score
- Volume and difficulty for each
- Whether the app currently ranks for it
- Recommended action (add to title, subtitle, or keyword field)

**Example prompts for Claude:**
```
# iOS Opportunities
Find keyword opportunities for Headspace (id: 493145008) in the US.

# Android Opportunities
Find keyword opportunities for TikTok (package: com.zhiliaoapp.musically) in the BR market.
Show keywords with volume > 60.
```

### Competitor ASO Report

Deep ASO comparison between two apps with keyword gap analysis.

**MCP:** `aso_competitor_report(app_id, competitor_id, country)`

**Use in skills:** `competitor-analysis`, `keyword-research`

**What it compares:**
- Metadata side-by-side (title, subtitle, description)
- Keyword overlap and gaps
- Rating and review comparison
- Screenshot analysis
- Strengths and weaknesses of each
- Actionable recommendations

**Example prompt for Claude:**
```
Compare the ASO strategy of Headspace (493145008) vs Calm (571800810) in the US market.
What keywords is Calm ranking for that Headspace is missing?
```

## Workflow: Complete ASO Optimization

Use these tools in sequence for a full ASO optimization:

```
Step 1: aso_full_audit
  → Understand current state, identify weaknesses

Step 2: aso_find_opportunities
  → Discover keywords you should be targeting

Step 3: aso_competitor_report
  → See what competitors do differently

Step 4: aso_suggest_metadata
  → Generate optimized title, subtitle, keyword field

Step 5: aso_validate_metadata
  → Verify the new metadata before submitting

Step 6: Track keywords and monitor
  → Use track_keyword for important terms
  → Check get_keyword_trends weekly
```

## Example: Full ASO Session with Claude

```
You: Run a complete ASO optimization for my app (id: 1234567890).
     My main competitors are Calm (571800810) and Headspace (493145008).

Claude will:
1. Run aso_full_audit → identify score and weaknesses
2. Run aso_competitor_report for each competitor → find gaps
3. Run aso_find_opportunities → discover untapped keywords
4. Run aso_suggest_metadata → generate optimized metadata
5. Run aso_validate_metadata → verify everything is correct
6. Provide a complete action plan with before/after comparison
```
