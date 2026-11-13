---
name: subscription-lifecycle
description: When the user wants to optimize their subscription business end-to-end — from trial start through renewal, cancellation, and win-back. Use when the user mentions "subscription lifecycle", "trial conversion", "churn", "cancellation", "win-back", "lapsed subscribers", "dunning", "billing retry", "grace period", "renewal rate", "subscriber LTV", or "resubscribe". For paywall design and pricing strategy, see monetization-strategy. For subscription analytics dashboards, see app-analytics.
metadata:
  version: 1.0.0
---

# Subscription Lifecycle

You optimize every stage of the subscription journey: trial → paid → renewal → cancellation recovery → win-back.

## The Subscription Lifecycle

```
Install → Trial start → [Trial period] → Conversion → Renewal → ... → Cancel → Win-back
            ↓                               ↓              ↓           ↓
         No convert                    Voluntary       Involuntary   Lapsed
         (nurture)                     (exit survey)   (dunning)     (campaign)
```

## Key Metrics at Each Stage

| Stage | Metric | Formula | Benchmark |
|-------|--------|---------|-----------|
| Trial | Trial start rate | Trials / Downloads | > 20% |
| Trial | Trial-to-paid | Conversions / Trials | 25–40% strong |
| Retention | Month 1 renewal | M1 renewals / Subscribers | > 70% |
| Retention | Month 6 renewal | M6 renewals / Subscribers | > 50% |
| Churn | Monthly churn | Lost subs / Start subs | < 5% good; < 2% excellent |
| Revenue | MRR | Active subs × monthly price | — |
| Revenue | LTV | ARPU / Monthly churn rate | — |
| Recovery | Dunning recovery | Recovered / Failed payments | > 30% |
| Win-back | Resubscribe rate | Returns / Lapsed | 5–15% |

## Stage 1 — Trial Optimization

### Trial Length

| App Type | Recommended trial | Notes |
|----------|------------------|-------|
| Simple utility | 3–7 days | Value obvious quickly |
| Health/fitness | 7–14 days | Habit formation needs time |
| Productivity | 7–14 days | Workflow integration |
| Education | 7–14 days | First lesson completion |
| Entertainment | 7 days | Binge behavior |

**Test:** Monthly apps with a 7-day trial vs. 14-day trial — conversion rate may drop slightly but LTV often increases.

### Trial Nurture Sequence

Send in-app (or push) messages during the trial to drive activation:

```
Day 0: Welcome — "Your trial has started. Here's how to get the most from it."
Day 1: Core feature highlight — "Try [key feature] today"
Day 3: Progress / social proof — "Users who do X get 3× better results"
Day 5 (7-day trial): Urgency — "2 days left in your trial"
Day 6: Value recap — "Here's what you've done / could do with premium"
Day 7: Last day — "Your trial ends today"
```

**Rule:** Messages should show value, not just create pressure.

### Trial End — Conversion Moment

At trial end, show a paywall that:
- Recaps what the user achieved during the trial
- Shows the most-used premium features
- Offers 3 plan options (monthly / annual / lifetime if applicable)
- Highlights savings on annual ("Save 40%")

See `monetization-strategy` for paywall design details.

## Stage 2 — Reducing Voluntary Churn

### Why Users Cancel (and How to Fix It)

| Reason | Signal | Fix |
|--------|--------|-----|
| Forgot they subscribed | Low sessions, no activation | Improve onboarding + notification strategy |
| Not enough value | Low feature usage | Push underused high-value features |
| Too expensive | Price sensitivity | Introduce lower-tier or pause option |
| Problem with app | 1-star reviews | Fix the bug, reply to reviews |
| Found alternative | — | Monitor competitor installs |
| Seasonal use | Churns at same time yearly | Offer a pause option |

### The Cancellation Flow

When a user initiates cancellation (iOS — `ManagedSubscriptionGroup`):

1. **Offer a pause** before full cancel: "Pause for 1–3 months instead of cancelling"
2. **Show value recap**: "You've used [feature] X times this month"
3. **Offer a discount**: Only as last resort — 20–30% off for 3 months
4. **Exit survey**: Always ask "Why are you cancelling?" (1 tap, not an essay)

**Cancellation exit survey options:**
- Too expensive
- Not using it enough
- Missing a feature I need
- Switching to a competitor
- Technical issues
- Just taking a break

### Engagement Signals to Watch

Users at high churn risk:
- Sessions < 1 per week (down from higher baseline)
- Core feature not used in 14+ days
- Push notifications disabled
- Last session > 7 days ago

Trigger a re-engagement push or in-app message before they cancel.

## Stage 3 — Involuntary Churn (Failed Payments)

Involuntary churn accounts for **20–40%** of all subscription cancellations.

### Dunning Strategy

| Day | Action |
|-----|--------|
| 0 | Payment fails silently — Apple/Google retry |
| 3 | Apple/Google retry #2 |
| 7 | Apple/Google retry #3 — show in-app "Update payment method" banner |
| 10 | Send push: "Your subscription couldn't be renewed — tap to update" |
| 14 | Grace period ends — subscription suspended |
| 15 | Final in-app message: "Reactivate to keep access" |

**Grace period:**
- iOS: 6 days (configurable up to 16 in App Store Connect)
- Android: 3 days (configurable)

Maximize grace period length — every extra day recovers more subscribers.

### RevenueCat Integration

RevenueCat handles dunning automatically. Key settings:
- Enable Billing Retry (iOS) / Account Hold (Android)
- Configure grace period to maximum allowed
- Use RevenueCat webhooks to trigger in-app messaging at each failure event

See `revenuecat.md` integration guide.

## Stage 4 — Win-Back Campaigns

Target lapsed subscribers (cancelled or expired in last 30–90 days).

### Win-Back Offer Ladder

Start with the softest offer; escalate only if no response:

```
Week 1 after lapse:  "We miss you" — highlight new features added since they left
Week 3:              "Come back for 30% off your first month back"
Week 6:              "3 months at 50% off — best offer we'll make"
Week 12+:            Archive — low conversion probability
```

### Win-Back Channels

| Channel | How |
|---------|-----|
| Push notification | In-app if app still installed |
| Email | If email was collected |
| Apple Win-Back Offer | Native iOS win-back offer in StoreKit 2 |
| Paid retargeting | Meta/Google retargeting to lapsed subscriber list |

### StoreKit 2 Win-Back Offers (iOS 18+)

Apple natively supports win-back subscription offers for lapsed subscribers:
- Set up in App Store Connect → Subscriptions → Win-Back Offers
- Presented automatically in the App Store to eligible lapsed users
- No additional code needed beyond StoreKit 2 integration

## Output Format

### Subscription Health Report

```
Lifecycle Metrics ([period]):

Trial start rate:    [X]%  (benchmark: >20%)
Trial conversion:    [X]%  (benchmark: 25-40%)
M1 renewal:          [X]%  (benchmark: >70%)
Monthly churn:       [X]%  (benchmark: <5%)
Dunning recovery:    [X]%  (benchmark: >30%)
Win-back rate:       [X]%  (benchmark: 5-15%)

LTV (estimated):    $[N]
MRR:                $[N]

Top issues:
1. [Stage] — [metric] is [X]% vs benchmark [Y]% — [recommended fix]
2. [Stage] — [metric] is [X]% vs benchmark [Y]% — [recommended fix]

Priority action:
[Single highest-leverage change to implement this week]
```

## Related Skills

- `monetization-strategy` — Paywall design, pricing tiers, trial setup
- `retention-optimization` — Engagement strategy to reduce voluntary churn
- `app-analytics` — Track the metrics above with Firebase + RevenueCat
- `onboarding-optimization` — Fix early-stage drop-off that prevents trial starts
- `rating-prompt-strategy` — Satisfied subscribers are your best raters
