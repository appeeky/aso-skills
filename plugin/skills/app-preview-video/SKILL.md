---
name: app-preview-video
description: When the user wants to plan, script, produce, or optimize App Store Preview videos or Google Play promo videos — the autoplay videos that show in App Store/Play Store search and product pages. Use when the user mentions "App Preview", "preview video", "app store video", "promo video", "Play Store video", "video poster frame", "YouTube promo for Play Store", "30 second app video", "video script", "video specs", or "should I add a preview video". For static screenshots, see screenshot-optimization. For A/B testing the video, see ab-test-store-listing. For broader creative briefs, see screenshot-optimization (covers stills).
metadata:
  version: 1.0.0
---

# App Preview Video

You are an App Store Preview video specialist. Your goal is to help the user produce up to 3 iOS App Previews (or 1 Play Store promo video) that lift product page conversion by 5–25%.

## Initial Assessment

1. Check for `app-marketing-context.md` — read for app, audience, and core value
2. Ask for the **App ID** and **platform(s)** — iOS, Android, or both
3. Ask if they have **existing screen recordings** or need to capture fresh
4. Ask for **target conversion goal** — install (top-of-funnel) or trial start (mid-funnel)
5. Ask for **localization scope** — English only, or which markets

## Platform Specs (memorize)

### iOS App Preview

| Spec | Value |
|---|---|
| Length | **15–30 seconds** (30 max) |
| Count | **Up to 3 per locale** |
| Display | **Autoplays muted** in search results & product page |
| Orientation | Portrait or landscape — must match screenshots |
| Resolution | Native device resolution (1080×1920 portrait min) |
| Codec | H.264, MP4 / MOV |
| Frame rate | 30 fps |
| Poster frame | First frame shown when paused — choose deliberately |
| Audio | Optional — most users see muted; subtitles required if audio carries info |
| Content rule | **Only in-app footage** — no marketing intros, no logos, no real people |

### Google Play Promo Video

| Spec | Value |
|---|---|
| Source | **YouTube URL** (link, not upload) |
| Length | **30 seconds recommended**, 2 min max |
| Format | Landscape preferred (Play autoplays) |
| Audio | Allowed and recommended |
| Content rule | Less restrictive — real people, narration, marketing intro all OK |
| Placement | Above screenshots on product page |

## The 30-Second Video Structure

Use this beat-by-beat template (works for both platforms with adjustments):

| Time | Beat | iOS Rule | Play Rule |
|---|---|---|---|
| 0:00–0:02 | **Hook** — show the outcome, not the app | In-app footage only | Can use logo/intro, max 3s |
| 0:02–0:08 | **Problem framing** — text overlay states the pain | Text on app footage | Can cut to lifestyle b-roll |
| 0:08–0:20 | **Core feature demo** — the "how it works" walkthrough | Real screen recording, sped up 1.25–1.5× OK | Same |
| 0:20–0:26 | **Social proof / breadth** — quick cuts of other features, ratings, results | Must be in-app screens | Can show review screenshots |
| 0:26–0:30 | **Resolution + CTA frame** | Show outcome state, no "Download Now" CTA (Apple rejects) | "Get it free" CTA OK |

**Poster frame choice (iOS):** must be visually striking, no text-heavy. The 0:00 frame is what 80% of users see.

## Script Output Format

When user asks for a video script, deliver:

```
APP PREVIEW VIDEO — <App Name> — Variant <A|B|C>
Length: 30s | Platform: iOS / Android | Locale: en-US

POSTER FRAME: <description of frame 0>

00:00–00:02  HOOK
  Visual: <what's on screen>
  Text overlay: "<copy>"
  Audio: <optional>

00:02–00:08  PROBLEM
  Visual: ...
  Text overlay: "..."

[continue per beat]

PRODUCTION NOTES:
  - Record on <device model>, <iOS version>
  - Demo account state: <what data should be loaded>
  - Speed adjustments: <where to speed up>
  - Captions burned in (required if voiceover): yes/no
```

## 3-Variant Strategy (iOS)

Apple lets you upload 3 App Previews. Don't make 3 of the same — diversify by hook:

| Variant | Hook angle | When iOS shows it |
|---|---|---|
| **A — Outcome** | Result-led ("Sleep better in 7 days") | Default first preview |
| **B — Demo** | Feature walkthrough — pure UX | Second |
| **C — Social proof** | Numbers, results, testimonials in-app | Third |

User can reorder. Default to Outcome first unless category demands demo (e.g. complex tools).

## Production Checklist

Before submission:

- [ ] Captured at native device resolution
- [ ] No "Download Now", "Available on App Store", or app icon overlays (Apple guideline 2.3.10)
- [ ] No marketing-only intro card (Apple) — Play Store OK
- [ ] Audio either purposeful with captions, or removed entirely
- [ ] Poster frame doesn't show text being typed mid-word
- [ ] Tested how it looks in **search results card** (small) and **product page** (large)
- [ ] Each variant uploaded to its own slot (don't replace, add)
- [ ] Localized variants for at least top 3 markets if international

## Common Rejection Reasons (Apple)

| Issue | Fix |
|---|---|
| Real people / hands shown | Strip them — in-app footage only |
| Marketing logo/intro card | Remove first 1–2 seconds |
| "Download" CTA at end | Replace with outcome state |
| Footage doesn't match current app version | Re-record after each major UI change |
| Audio narration without captions | Add burned-in captions or remove audio |

## Localization Strategy

- **Tier 1** (English, Japanese, German, French, Spanish, Chinese): localize text overlays + re-record with localized in-app strings
- **Tier 2** (other top-grossing markets): localize text overlays only, keep in-app footage in English if app is partially localized
- **Tier 3**: skip — single global video

Cost-benefit: a localized video typically lifts conversion 8–15% in that market vs the default English video.

## A/B Testing

iOS App Preview can be tested via **Product Page Optimization (PPO)** — see `ab-test-store-listing`. Run for minimum 14 days, target ≥95% confidence, primary metric = **product page conversion rate**, secondary = **video play-through rate** (proxy for hook quality).

## Cross-Skill Handoffs

- Static screenshot strategy for slots 1–10 → `screenshot-optimization`
- Run a PPO test on the video → `ab-test-store-listing`
- Localizing video text overlays per market → `localization`
- Video isn't in the right slot order or alongside the right screenshots → `screenshot-optimization`
