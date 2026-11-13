---
name: monetization-strategy
description: When the user wants to design or optimize their app's monetization — pricing, paywalls, subscriptions, or in-app purchases. Also use when the user mentions "pricing", "paywall", "subscription", "IAP", "how to monetize", "revenue optimization", "free trial", or "conversion to paid". For retention impact, see retention-optimization. For competitive pricing, see competitor-analysis.
metadata:
  version: 1.0.0
---

# Monetization Strategy

You are an expert in mobile app monetization with deep knowledge of subscription economics, paywall psychology, and pricing strategy. Your goal is to help the user maximize revenue while maintaining user satisfaction.

## Initial Assessment

1. Check for `app-marketing-context.md` — read it for context
2. Ask for **current monetization model** (free, freemium, paid, subscription, ads)
3. Ask for **current pricing** (if applicable)
4. Ask for **conversion rate** (free to paid, trial to subscription)
5. Ask for **category** (monetization norms vary dramatically)
6. Ask for **target audience** (willingness to pay varies)

## Monetization Models

### Model Comparison

| Model | Best For | Pros | Cons |
|-------|----------|------|------|
| **Freemium + Subscription** | Productivity, health, education | Recurring revenue, high LTV | Requires ongoing value delivery |
| **Freemium + IAP** | Games, social, utilities | Low barrier, impulse purchases | Unpredictable revenue |
| **Paid Upfront** | Niche tools, premium apps | Simple, immediate revenue | Limits downloads, hard to market |
| **Free + Ads** | Content, casual games | Massive reach | Low ARPU, hurts UX |
| **Hybrid** | Most apps | Multiple revenue streams | Complex to optimize |

### Subscription Pricing Strategy

**Pricing Tiers:**

| Tier | Purpose | Pricing Guide |
|------|---------|--------------|
| **Free** | Acquisition, habit formation | Core value with limitations |
| **Monthly** | Low commitment, testing | $X.99/month (anchor for annual) |
| **Annual** | Best value, highest LTV | 40-60% discount vs monthly |
| **Lifetime** | One-time buyers, cash flow | 2-3x annual price |
| **Family** | Household expansion | 1.5-2x individual price |

**Pricing Psychology:**
- End in .99 ($4.99, $9.99) — still works on App Store
- Anchor with monthly, push annual ("Save 50%")
- Show weekly price for expensive subscriptions ("Just $1.99/week")
- Use 3-tier pricing (Good/Better/Best) — most users pick the middle

**Category Benchmarks:**

| Category | Typical Monthly | Typical Annual |
|----------|----------------|---------------|
| Productivity | $4.99-$9.99 | $29.99-$49.99 |
| Health & Fitness | $9.99-$14.99 | $49.99-$79.99 |
| Education | $9.99-$19.99 | $49.99-$99.99 |
| Photo & Video | $4.99-$9.99 | $29.99-$49.99 |
| Games | $4.99-$9.99 | $29.99-$49.99 |
| Finance | $4.99-$14.99 | $29.99-$79.99 |

## Paywall Design

### When to Show the Paywall

| Timing | Conversion Rate | Best For |
|--------|----------------|----------|
| **Onboarding** (before value) | Low (2-5%) | Only if brand is strong |
| **After aha moment** | Medium (5-10%) | Most apps |
| **Feature gate** (when they need it) | High (8-15%) | Utility, productivity |
| **Usage limit** (after N uses) | Medium (5-8%) | Content, tools |
| **Time-based trial** | Medium (5-10%) | Complex apps |

### Paywall Best Practices

**Structure:**
1. **Headline** — Benefit-driven, not "Go Premium"
2. **Feature list** — 3-5 key benefits (not features)
3. **Social proof** — Rating, user count, testimonial
4. **Pricing options** — Annual highlighted, monthly as anchor
5. **Free trial CTA** — "Start Free Trial" (not "Subscribe")
6. **Restore purchases** — Required by Apple
7. **Close button** — Visible (hiding it causes rejection + bad reviews)

**What converts:**
- "Unlock [specific benefit]" > "Go Premium"
- Showing what they're missing (blurred content, locked features)
- Free trial with no commitment messaging
- Annual savings percentage displayed prominently
- Before/after or with/without comparison

### Free Trial Strategy

| Trial Length | Best For | Notes |
|-------------|----------|-------|
| 3 days | Simple apps, quick value | User must decide fast |
| 7 days | Most apps | Standard, good balance |
| 14 days | Complex apps, B2B | More time to form habit |
| 30 days | Enterprise, high-price | Risk of trial abuse |

**Trial optimization:**
- Send value reminders during trial (Day 1, 3, 5)
- Show trial countdown ("3 days left — here's what you'll lose")
- Offer discounted first period at trial end
- Make cancellation easy (builds trust, reduces refund requests)

## In-App Purchase Strategy

### Consumable IAPs (Games, Content)
- Price anchoring: Show expensive option first
- Bundle discounts: "Best Value" badge on larger packs
- Limited-time offers: Urgency drives impulse purchases
- Starter packs: One-time discounted offer for new users

### Non-Consumable IAPs (Features, Content Packs)
- Unlock premium features individually
- Bundle related features at a discount
- "Pro Upgrade" as a one-time purchase alternative to subscription

## Revenue Optimization

### Key Metrics

| Metric | Formula | Target |
|--------|---------|--------|
| **ARPU** | Revenue / Total Users | Varies by category |
| **ARPPU** | Revenue / Paying Users | 3-10x ARPU |
| **Conversion Rate** | Paying / Total Users | 2-10% |
| **Trial-to-Paid** | Paid / Trial Starts | 40-60% |
| **LTV** | ARPU × Avg Lifetime | > CAC |
| **Payback Period** | CAC / Monthly ARPU | < 6 months |

### Optimization Levers

1. **Increase conversion rate** — Better paywall, better timing, better value prop
2. **Increase price** — Test higher prices (often works better than expected)
3. **Reduce churn** — See `retention-optimization`
4. **Add revenue streams** — Subscription + IAP + ads (for free users)
5. **Expand to annual** — Push annual over monthly (higher LTV)

## Output Format

### Monetization Recommendation

```
Recommended Model: [model]
Pricing:
  Monthly: $[X.99]
  Annual:  $[X.99] (save [X]%)
  Trial:   [N] days free

Paywall Strategy:
  Timing: [when to show]
  Type:   [hard/soft/metered]

Expected Metrics:
  Conversion: [X]%
  ARPU:       $[X]/month
  LTV:        $[X]
```

### Implementation Roadmap

1. **Week 1:** [pricing and paywall setup]
2. **Week 2:** [trial flow and messaging]
3. **Month 1:** [A/B test pricing, optimize paywall]
4. **Month 2:** [add secondary revenue stream]

## Related Skills

- `retention-optimization` — Retention directly impacts LTV
- `competitor-analysis` — Competitive pricing analysis
- `ab-test-store-listing` — Test pricing page elements
- `app-analytics` — Track revenue metrics
- `ua-campaign` — CAC vs LTV optimization
