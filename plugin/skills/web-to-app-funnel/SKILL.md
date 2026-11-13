---
name: web-to-app-funnel
description: When the user wants to design or optimize the funnel that takes web visitors into installing and onboarding the app — including smart app banners, web-to-app deep links, deferred deep links, web onboarding (Stripe-paid web flow before app install), QR codes, "open in app" CTAs, and the trade-off between paying on web vs in-app. Use when the user mentions "web to app", "smart app banner", "Stripe before app", "web paywall before install", "Branch web SDK", "web funnel for app", "AppsFlyer OneLink web", "Universal Links", "App Links", "QR code to app", "open in app", "deferred deep link from web", or "should I sell on web first then push to app". For pure in-app onboarding, see onboarding-optimization. For deep link infra, see attribution-setup.
metadata:
  version: 1.0.0
---

# Web-to-App Funnel

You are a web-to-app conversion specialist. Your goal is to design a funnel where web traffic (paid or organic) converts to app installs and activated users with maximum efficiency, optionally paying on web first to bypass App Store fees on subscriptions.

## Initial Assessment

1. Check for `app-marketing-context.md`
2. Ask: **What web traffic** does the user have or plan? (SEO, paid search, social ads with web destination, podcast, newsletter)
3. Ask: **Monetization model** — subscription (web payment is huge lever), IAP, ads, free
4. Ask: **Current web property** — landing page, full marketing site, none
5. Ask: **Markets** — US-only or global? (web payment rules differ in EU/Korea)
6. Ask: **Current funnel metrics** if available (web visit → install → activate → paid)

## Why Web-to-App Matters in 2025

| Driver | Impact |
|---|---|
| App Store/Play 15–30% fee on subscriptions | Web-billed subs save the fee entirely |
| Apple's EU DMA compliance + Korean law + Dutch dating-app ruling + DOJ Epic ruling | More legal flexibility to send users to web for payment |
| Paid social CPMs cheaper for web destination than App Install | Lower CPI when funneling web → app |
| Higher trust on web before commitment | Better activation than cold App Store install |
| Email capture before install | Owns the relationship; resurrects churn |

## The Three Web-to-App Patterns

### Pattern A: Web → App Install → In-App Paywall

Traditional. Web is just the discovery / brand layer. App Store handles billing.

**Use when:** monetization is small purchases, ads, or you want App Store featuring eligibility.

### Pattern B: Web Onboarding + Web Payment, then App Install

User completes quiz, signs up, **pays on the web with Stripe**, then installs the app and signs in to the paid account. App is the delivery mechanism.

**Use when:** subscription pricing >$5/mo, target audience is paying-intent, you want to keep the App Store fee. Used by Cal AI, Rise Sleep, Noom, Zing, Future, hundreds of quiz funnels.

### Pattern C: Web Capture, App Activation, Web or App Payment

User gives email/phone on web, gets sent an SMS link to install, paywall is in-app.

**Use when:** lower-priced subs, want broader reach, audience is mobile-first.

## Pattern B (Web Payment) — The Mechanic

```
Paid ad / SEO / TikTok bio
   ↓
Landing page with quiz (high conversion)
   ↓
Personalized result + plan
   ↓
Email capture
   ↓
Stripe checkout — PAID HERE
   ↓
"Get the app" page with QR + App Store / Play badges
   ↓
App install (deferred deep link carries paid status)
   ↓
App opens, calls backend with email/token, recognizes paid user
   ↓
Skip in-app paywall, go straight to product
```

**Critical engineering pieces:**

- Deferred deep link with email/token (Branch / AppsFlyer / your own URL scheme handler post-Universal-Link)
- Backend that maps Stripe customer → app user on first sign-in
- "Already paid" check on every paywall surface
- App Store / Play compliance: don't show pricing inside the app that's better than IAP if you do offer IAP (Apple), or use external payment link entitlement

## Apple / Google Compliance

| Rule | Apple | Google Play |
|---|---|---|
| Can users pay on web? | Yes, but app cannot link to web payment from inside app (with exceptions: External Purchase Link Entitlement in US/EU/Korea/Netherlands) | Yes, with User Choice Billing in EEA + some markets |
| Can app inform user that paid features exist on web? | Reader app exception (3.1.3a) for some categories; otherwise must not direct out-of-app | More flexible; can mention web outside checkout flows |
| Can the funnel start on web? | Yes — no rule against it, the rule is about in-app linking | Yes |
| Can app sign in users who paid on web? | Yes — fully allowed | Yes |

**Bottom line:** Web → web payment → app install → app sign-in is **fully compliant**. The constraint is only on in-app linking back out.

## Smart Banners & Open-in-App

For users who arrive on web while having the app installed, route them in:

| Tool | Notes |
|---|---|
| **Apple Smart App Banner** (`<meta name="apple-itunes-app">`) | Free, Safari only, basic |
| **Branch Journeys** | Cross-browser, customizable, attribution built-in |
| **AppsFlyer Smart Banner** | Same |
| **Custom JS** | Sniff user agent, detect install via Universal Link timeout pattern |

For higher conversion on mobile web → app handoff:
- Use Universal Links / App Links so the app opens directly
- Pass context (current page / item ID) via the link
- Fall back to App Store if not installed (deferred deep link still preserves context)

## Quiz Funnel Mechanics (Pattern B)

The quiz is the conversion engine. Best practices:

- 6–12 questions, mostly multiple choice with images
- 30–60 seconds to complete
- Each answer feels personalized (progress bar advances, copy reacts)
- Email capture **after** results revealed but **before** plan / price (sunk-cost commitment)
- Show personalized result page with "Your plan" framing
- Plan picker with annual default, social proof above CTA
- Stripe Checkout opens in same tab on mobile (don't use modal)

Tools: build on Next.js + Stripe + Postgres, OR use Funnelish, Heyflow, GetWaitlist for no-code.

## Output Template

```
WEB-TO-APP FUNNEL — <App Name>

PATTERN: <A / B / C> — Reason: <why this fits the model>

FUNNEL DESIGN:

Step 1: Traffic source
  Channels: <SEO / paid social / podcast / etc.>
  Landing URL: <URL>

Step 2: Landing / quiz
  Conversion target: visit → email capture <X%>
  Quiz length: <N> questions
  Personalization axes: <list>

Step 3: Payment (if Pattern B)
  Plan structure: <list>
  Stripe vs Paddle (if EU VAT): <choice>
  Conversion target: results → paid <X%>

Step 4: App install handoff
  Method: QR code + App Store / Play badges + SMS-me-the-link
  Deferred deep link tool: <Branch / OneLink / custom>

Step 5: App sign-in & activation
  Token / email-link sign-in
  Paid status verification: <flow>
  Skip in-app paywall: yes / no
  Activation event: <define>

COMPLIANCE CHECKLIST:
  [ ] No in-app links to web checkout (or External Purchase Link Entitlement requested)
  [ ] Privacy policy covers Stripe data + App data linkage
  [ ] App Store / Play app description doesn't reference web payment
  [ ] Universal Links / App Links domain verified

MEASUREMENT:
  - Visit → quiz start
  - Quiz start → email capture
  - Email capture → checkout
  - Checkout → paid (Stripe)
  - Paid → app install
  - App install → app sign-in
  - Sign-in → activation event

EXPECTED ECONOMICS:
  Saved fee per sub vs in-app: ~15-30% of LTV
  Higher CAC on web-first: typically yes, but offset by skipping App Store fee + email capture asset
```

## Common Mistakes

- Pattern B without backend ready to recognize paid users → users pay on web, hit paywall in app, churn
- No QR + SMS-me-the-link option on desktop checkout success — desktop buyers can't easily get to mobile
- Universal Links not verified → "Open in app" goes to App Store instead
- Putting pricing in App Store description while collecting payment on web (Apple guideline 3.1.3 violation)
- Not capturing email before payment — losing 30–60% of would-be subscribers to retargeting
- Stripe modal checkout on mobile — kills conversion vs full-page redirect

## Cross-Skill Handoffs

- Deep link infrastructure underlying the funnel → `attribution-setup`
- The in-app onboarding once user lands → `onboarding-optimization`
- The paywall (if Pattern A or C) → `paywall-optimization`
- Subscription lifecycle once paid → `subscription-lifecycle`
- Quiz funnel landing page SEO → not in scope (web SEO, outside ASO)
- Paid web traffic to feed this funnel → `ua-campaign` (web ads)
