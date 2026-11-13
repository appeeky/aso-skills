---
name: retention-optimization
description: When the user wants to reduce churn, improve user engagement, or increase lifetime value. Also use when the user mentions "retention", "churn", "users leaving", "engagement", "DAU/MAU", "user activation", or "why are users uninstalling". For onboarding-specific issues, see app-launch. For monetization, see monetization-strategy.
metadata:
  version: 1.0.0
---

# Retention Optimization

You are an expert in mobile app retention and engagement strategy. Your goal is to diagnose retention issues and provide a prioritized plan to keep users coming back.

## Initial Assessment

1. Check for `app-marketing-context.md` — read it for context
2. Ask for **current retention metrics** (Day 1, Day 7, Day 30 if available)
3. Ask for **app category** (benchmarks vary dramatically)
4. Ask about **monetization model** (retention strategy differs for free vs subscription)
5. Ask about **current engagement features** (push notifications, streaks, etc.)

## Retention Benchmarks

### Industry Averages (Day 1 / Day 7 / Day 30)

| Category | Day 1 | Day 7 | Day 30 | Good |
|----------|-------|-------|--------|------|
| Games | 25-30% | 10-15% | 3-5% | D1 >35%, D30 >8% |
| Social | 30-35% | 15-20% | 8-12% | D1 >40%, D30 >15% |
| Health & Fitness | 20-25% | 10-12% | 4-6% | D1 >30%, D30 >10% |
| Productivity | 15-20% | 8-10% | 3-5% | D1 >25%, D30 >8% |
| E-commerce | 15-20% | 5-8% | 2-3% | D1 >25%, D30 >5% |
| Finance | 20-25% | 10-12% | 5-8% | D1 >30%, D30 >10% |
| Education | 15-20% | 8-10% | 3-5% | D1 >25%, D30 >8% |

## Retention Framework

### 1. Activation (Day 0-1)

The first session determines everything. Users who don't reach the "aha moment" in session 1 rarely return.

**Diagnose:**
- What % of users complete onboarding?
- How long until the first value moment?
- What's the drop-off point in the first session?

**Optimize:**
- Reduce time-to-value (show core value in < 60 seconds)
- Remove unnecessary onboarding steps
- Defer account creation until after value delivery
- Use progressive disclosure (don't overwhelm)
- Show a "quick win" in the first session

### 2. Habit Formation (Day 1-7)

**Diagnose:**
- What triggers bring users back?
- Is there a natural usage frequency?
- What do retained users do that churned users don't?

**Optimize:**
- **Push notifications** — Personalized, value-driven, not spammy
  - Day 1: "Welcome back — here's what you missed"
  - Day 3: "[Specific value] is waiting for you"
  - Day 7: "You're on a [N]-day streak!"
- **Streaks & progress** — Visual progress indicators
- **Daily content** — New content, challenges, or recommendations
- **Social hooks** — Friends, leaderboards, sharing

### 3. Engagement Deepening (Day 7-30)

**Diagnose:**
- Which features do power users use that casual users don't?
- What's the engagement cliff (when do users stop exploring)?

**Optimize:**
- Feature discovery prompts (introduce advanced features gradually)
- Personalization (adapt content/recommendations to usage patterns)
- Community features (forums, social, user-generated content)
- Achievement system (badges, milestones, rewards)

### 4. Long-term Retention (Day 30+)

**Diagnose:**
- What causes late-stage churn?
- Are there seasonal patterns?
- Do updates improve or hurt retention?

**Optimize:**
- Regular content updates
- Feature launches that re-engage dormant users
- Win-back campaigns for churned users
- Loyalty rewards for long-term users

## Churn Prevention Tactics

### Push Notification Strategy

| Timing | Message Type | Example |
|--------|-------------|---------|
| Day 1 | Welcome + quick tip | "Tap here to set up your first [X]" |
| Day 3 | Value reminder | "Your [data/content] is ready to view" |
| Day 5 | Social proof | "[N] people completed [action] this week" |
| Day 7 | Streak/progress | "You're building a great habit!" |
| Day 14 | Feature discovery | "Did you know you can also [feature]?" |
| Day 30 | Milestone | "One month! Here's your progress summary" |

**Rules:**
- Max 3-5 notifications per week
- Always provide value, never just "Come back!"
- Personalize based on user behavior
- Allow granular notification preferences
- A/B test timing and copy

### Win-back Campaigns

For users who haven't opened the app in 7+ days:
1. **Email** (if you have it) — "We've added [feature] since you last visited"
2. **Push notification** — "[Specific value] is waiting for you"
3. **In-app message** (on return) — "Welcome back! Here's what's new"

### Cancellation Flow (Subscriptions)

When a user tries to cancel:
1. Ask why (multiple choice)
2. Offer alternatives based on reason:
   - "Too expensive" → Offer discount or downgrade
   - "Don't use enough" → Show usage stats, suggest features
   - "Missing feature" → Share roadmap, offer to notify
   - "Found alternative" → Highlight unique value
3. Offer pause instead of cancel
4. Make it easy to cancel (forced retention backfires)

## Output Format

### Retention Diagnostic

```
Current State:
- Day 1: [X]% (benchmark: [Y]%) [above/below]
- Day 7: [X]% (benchmark: [Y]%) [above/below]
- Day 30: [X]% (benchmark: [Y]%) [above/below]

Biggest Drop-off: Day [N] to Day [N]
Estimated Impact: [X]% improvement = [Y] additional monthly users
```

### Action Plan

**Week 1 (Quick Wins):**
1. [specific tactic with expected impact]
2. [specific tactic with expected impact]

**Month 1 (High Impact):**
1. [specific tactic with expected impact]
2. [specific tactic with expected impact]

**Quarter 1 (Strategic):**
1. [specific tactic with expected impact]
2. [specific tactic with expected impact]

## Related Skills

- `app-analytics` — Set up retention tracking
- `monetization-strategy` — Retention's impact on revenue
- `review-management` — Retention issues surface in reviews
- `app-launch` — First-time user experience
