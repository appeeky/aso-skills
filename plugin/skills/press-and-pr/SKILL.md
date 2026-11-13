---
name: press-and-pr
description: When the user wants to get press coverage, media mentions, or editorial features for their app — including writing press releases, pitching journalists, getting on "best apps" lists, or building an app press kit. Use when the user mentions "press", "PR", "media coverage", "TechCrunch", "journalist", "press release", "app press kit", "get featured in media", "editorial coverage", "review from a blogger", or "app launch announcement". For Apple editorial featuring, see app-store-featured. For launch strategy, see app-launch.
metadata:
  version: 1.0.0
---

# Press & PR for Apps

You help indie developers and app teams get genuine media coverage — which drives installs, backlinks, and App Store credibility.

## Why Press Still Matters

- **Web referral** in App Store Connect directly tracks installs from press links
- **Backlinks** from high-authority sites (TechCrunch, The Verge) improve web presence
- **Social proof** — "As seen on…" on your product page improves conversion
- **Apple editorial** — press coverage increases editorial featuring consideration
- **Organic amplification** — articles get shared, creating discovery beyond the original publication

## Target Media Tiers

### Tier 1 — High impact, harder to get

| Publication | Focus | Notes |
|-------------|-------|-------|
| TechCrunch | Consumer tech, startups | Exclusives preferred |
| The Verge | Consumer tech | Curated; quality bar is high |
| Wired | Tech culture | Long-form, unique angle needed |
| Fast Company | Innovation, productivity | Strong business angle |
| 9to5Mac | iOS/macOS apps | App-specific, accessible |
| MacStories | iOS apps | Very accessible for indie devs |

### Tier 2 — Accessible, meaningful reach

| Type | Examples |
|------|---------|
| App review blogs | AppAdvice, TouchArcade (games), AppShopper |
| Niche newsletters | App-specific verticals (health, productivity, finance newsletters) |
| YouTube channels | AppFind, MKBHD (for significant apps), niche channels |
| Podcasts | App podcast appearances, niche shows |

### Tier 3 — Start here

| Type | Examples |
|------|---------|
| Reddit | r/iphone, r/androidapps, r/productivity (category-specific) |
| Product Hunt | Launch day visibility |
| Hacker News | Show HN post for technical/productivity apps |
| Indie hackers | For indie developer community coverage |

## What Makes a Story

Press doesn't cover apps — they cover **stories**. Find your angle:

| Angle | Example |
|-------|---------|
| **Numbers** | "App hit 100K downloads in 7 days with no marketing" |
| **Problem solved** | "Solo dev built X because no existing tool did Y" |
| **Unique data** | "Our app analyzed 10M habit logs — here's what we learned" |
| **Category creation** | "We invented a new category of [type] app" |
| **David vs Goliath** | Indie beating a Big Tech competitor |
| **Timely** | Tied to a current news trend or cultural moment |
| **Human story** | Founder's compelling personal motivation |

**Test your angle:** Can you explain the story in 1 sentence that would make someone say "interesting"?

## Press Kit

Create a `presskit/` folder on your website or a Notion page with:

```
Press Kit Contents:
- [ ] App name, one-liner, category
- [ ] 3 founder photos (high-res, print-quality)
- [ ] App icon (1024×1024px, PNG)
- [ ] 5–10 screenshots (phone mockups, high-res)
- [ ] App preview video (optional but impactful)
- [ ] 3-sentence company/founder bio
- [ ] Key stats (downloads, ratings, notable users)
- [ ] Press quotes / prior coverage (if any)
- [ ] App Store link + website
- [ ] Press contact email
```

Host at: `yoursite.com/press` or a publicly shared Notion/Google Drive link.

## Press Release Structure

```
FOR IMMEDIATE RELEASE

[Headline — most newsworthy fact as a statement]
[Subheadline — supporting detail]

[City, Date] — [Hook sentence: what happened and why it matters]

[Paragraph 1: The news — who, what, when, where]

[Paragraph 2: The why — problem being solved, backstory, unique approach]

[Paragraph 3: A quote from the founder]
"[Quote that adds voice, not just restates facts]" — [Name], [Title], [Company]

[Paragraph 4: Key features or data points — 3 max]

[Paragraph 5: Availability, pricing, platforms]
[App Name] is available on [iOS/Android/both] for [free/price]. Download at [App Store link].

###

About [Company]:
[2–3 sentences]

Media Contact:
[Name] | [email] | [phone optional]
```

## Pitching Journalists

### The Cold Pitch Email

```
Subject: [App Name] — [your angle in 8 words]
e.g., "Habitica clone reached #1 Health with zero ad spend"

Hi [First name],

[1 sentence: why you're reaching out to them specifically]
e.g., "I read your piece on [recent article] — [App Name] is related."

[1 sentence: what the app does]
[1 sentence: the story angle / most interesting stat or fact]
[1 sentence: why now / why timely]

Happy to send a promo code, press kit, or get on a quick call.

[Your name]
[App Store link]
[Press kit link]
```

**Rules:**
- Max 5 sentences in the pitch
- Personalize the first line for each journalist — no mass blast
- Don't attach files — link to your press kit
- Send Tuesday–Thursday, 8–10am recipient's timezone
- Follow up once after 5 business days — then move on

### Finding the Right Journalists

1. Search the target publication for recent app reviews in your category
2. Note the byline — pitch that specific writer
3. Check their Twitter/X bio for DM preference
4. Use tools like Hunter.io for email guessing (format: first@publication.com)

## Embargo Strategy

For major launches, offer an embargo:

- Contact journalists 1–2 weeks before launch
- Offer exclusive access under embargo (story publishes on launch day)
- One journalist per tier (don't offer the same exclusive to two competing outlets)
- Provide TestFlight / Play beta access

Exclusives dramatically increase pickup from Tier 1 publications.

## Product Hunt Launch

| Step | When | Action |
|------|------|--------|
| Create coming soon | 2 weeks before | Enable "coming soon" to collect followers |
| Find a hunter | 1 week before | Ask an influential PH user to "hunt" you |
| Prepare assets | 3 days before | Gallery, tagline, description, first comment |
| Launch day | Tuesday–Thursday | Ship at 12:01am PST; all-day community engagement |
| Follow-up post | Launch + 1 week | Share results as a Show HN or maker story |

## Output Format

### PR Plan

```
Story angle: [one sentence]

Media targets:
  Tier 1: [publication + journalist name]
  Tier 2: [2–3 blogs/newsletters]
  Tier 3: Product Hunt, Reddit r/[category], HN

Timeline:
  T-14: Press kit ready, press release drafted
  T-10: Embargo pitches sent to Tier 1
  T-7:  Follow-ups + Tier 2 pitches
  T-0:  Launch + Product Hunt + Tier 3 posts
  T+3:  Thank reporters who covered, share articles

Press kit: [link]
Press contact: [email]
```

## Related Skills

- `app-launch` — Full launch strategy (PR is one channel within it)
- `app-store-featured` — Press coverage supports Apple editorial consideration
- `ua-campaign` — Complement PR with paid UA on launch week
