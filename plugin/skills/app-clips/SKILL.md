---
name: app-clips
description: When the user wants to implement, optimize, or use App Clips for app discovery and conversion. Use when the user mentions "App Clip", "app clip code", "mini app", "instant app", "App Clip card", "App Clip link", "no download required", "instant experience", or wants to understand how App Clips appear in App Store search. For general App Store discoverability, see aso-audit. For marketing campaigns, see ua-campaign.
metadata:
  version: 1.0.0
---

# App Clips

You help plan, implement, and optimize App Clips — lightweight iOS experiences (max 15MB) that users can launch instantly without installing the full app.

## What App Clips Are

App Clips are small, focused pieces of your app that users can use without downloading the full app. They appear in:

- **App Store search results** — alongside your full app
- **Smart App Banners** on websites
- **QR codes** and App Clip codes (physical NFC/QR)
- **Safari** — when visiting a linked URL
- **Messages** — when a URL is shared in iMessages
- **Maps** — for location-based businesses
- **Nearby** — NFC and visual codes in the physical world
- **Siri suggestions**

## Size Limit

| Target | Limit |
|--------|-------|
| App Clip binary | **15MB** max (thinned, downloaded on demand) |
| App itself | No change |

This forces you to ship only the essential experience.

## Best Use Cases

| App Type | App Clip Experience |
|----------|-------------------|
| Parking/transit | Pay for parking or buy a ticket |
| Restaurant | View menu, order, or pay |
| Retail | Product preview or loyalty card |
| Fitness | Try a single workout |
| Games | Play a demo level |
| Finance | Calculator or quick quote |
| Events | Ticket purchase or check-in |
| Utilities | Use core feature once |

**The key question:** What is the minimum experience that demonstrates your app's core value?

## App Clip Discovery in the App Store

App Clips appear in **App Store search** as a separate card below your full app result — labeled "App Clip" with an "Open" button (not "Get").

- Users who tap "Open" launch the App Clip instantly
- After using it, they see a banner: "Get the full app"
- Conversion from App Clip user → full install is typically **3–5× higher** than cold organic traffic

**ASO implication:** The App Clip card inherits your app's title and description metadata. Optimizing your main listing improves App Clip discoverability too.

## Technical Requirements

### What to include in the App Clip

- Only the core experience
- Apple Pay or Sign in with Apple for authentication (no full account creation)
- No App Clip–only content — everything in the clip should also be in the full app
- Request only essential permissions (no push notifications in App Clips)

### URL scheme

Each App Clip is triggered by a URL:
```
https://yourdomain.com/clip/[experience]
```

Configure in App Store Connect → Your App → App Clip Experiences.

### Handoff to Full App

Always include a clear upgrade prompt:

```swift
// Show SKOverlay after the user gets value from the clip
let config = SKOverlay.AppClipConfiguration(position: .bottom)
let overlay = SKOverlay(configuration: config)
overlay.present(in: windowScene)
```

Show the overlay **after** the user has experienced value — not immediately.

## App Clip Experiences

You can configure multiple App Clip experiences (one per URL pattern):

| Experience | URL | Use Case |
|-----------|-----|---------|
| Default | `yourdomain.com` | General / App Store search |
| Location | `yourdomain.com/location/123` | Maps, NFC at specific location |
| Campaign | `yourdomain.com/promo/summer` | Marketing campaign |
| Feature | `yourdomain.com/feature/x` | Specific feature demo |

Each experience can have its own:
- Title (max 18 chars)
- Subtitle (max 13 chars)
- Header image (3000×2000px)
- Action button text

## App Clip Card Design

The card is shown before the App Clip launches:

| Field | Limit | Tips |
|-------|-------|------|
| Title | 18 chars | Clear action: "Order Coffee" not "App Name" |
| Subtitle | 13 chars | Reinforce the value: "Skip the line" |
| Header image | 3000×2000px | Show the outcome, not the UI |
| Action button | — | Use context-specific text: "Order", "Pay", "Play" |

## Measurement

Track in App Store Connect → App Analytics → App Clips:
- App Clip sessions
- App Clip cards displayed
- App Clip → full app conversions
- Unique App Clip users

## App Clip vs Full App Install Trade-offs

| | App Clip | Full Install |
|---|---------|-------------|
| User friction | Very low | Higher |
| Commitment | Low | High |
| Retention | Low (one-time use) | High |
| Conversion from Clip | — | 3–5× higher than cold traffic |
| Best for | Discovery + conversion | Retention + monetization |

## Implementation Checklist

```
Setup:
- [ ] App Clip target added to Xcode project
- [ ] App Clip < 15MB (use size report in Xcode)
- [ ] Associated Domains entitlement configured
- [ ] App Clip experience URLs registered in App Store Connect

UX:
- [ ] Core value delivered within 60 seconds
- [ ] Sign in with Apple or Apple Pay (no custom sign-up)
- [ ] SKOverlay shown post-value (not immediately)
- [ ] Clear data handoff when user installs full app

App Store Connect:
- [ ] Default App Clip experience configured
- [ ] Header image uploaded (3000×2000px)
- [ ] Title ≤ 18 chars, subtitle ≤ 13 chars
- [ ] Additional experiences for locations/campaigns (if applicable)
```

## Related Skills

- `aso-audit` — Clip discoverability depends on main app ASO
- `onboarding-optimization` — Apply same "value-first" principles to Clip experience
- `ua-campaign` — Drive traffic to App Clip URLs in paid campaigns
- `app-store-featured` — App Clips can support featuring eligibility
