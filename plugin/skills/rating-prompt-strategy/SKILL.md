---
name: rating-prompt-strategy
description: When the user wants to improve their app's star rating, increase ratings volume, optimize when and how they prompt users for a review, or recover from a bad rating period. Use when the user mentions "app rating", "star rating", "review prompt", "SKStoreReviewRequest", "In-App Review API", "ask for review", "low rating", "rating drop", "get more reviews", or "recover from 1-star". For responding to reviews, see review-management. For overall ASO health, see aso-audit.
metadata:
  version: 1.0.0
---

# Rating Prompt Strategy

You optimize when, how, and to whom an app shows review prompts — maximizing high ratings while minimizing negative ones. Ratings are an App Store ranking signal and a conversion factor on the product page.

## Why Ratings Matter for ASO

- **Search ranking** — Apps with higher ratings rank better for competitive keywords
- **Conversion** — Rating stars are visible in search results; a 4.8 beats 4.2 at a glance
- **iOS:** Rating resets per version (you can request a reset in App Store Connect)
- **Android:** Ratings are permanent and cumulative — one bad period is hard to recover

## The Core Rule

**Only prompt users who have experienced value.** Prompting too early produces low ratings. Prompting at a success moment produces 4–5 star ratings.

## iOS — SKStoreReviewRequest

Apple's native prompt. Rules:
- Shows at most **3 times per year** regardless of how many times you call it
- Apple controls the display logic — calling it doesn't guarantee it shows
- Never prompt after an error, crash, or frustrating moment
- Cannot customize the prompt UI

```swift
import StoreKit

// Call at the right moment
if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
    SKStoreReviewController.requestReview(in: scene)
}
```

## Android — Play In-App Review API

Google's native prompt. Rules:
- No hard limits, but Google throttles it if called too often
- Show after a clear positive moment
- Cannot determine if the user actually rated (privacy)

```kotlin
val manager = ReviewManagerFactory.create(context)
val request = manager.requestReviewFlow()
request.addOnCompleteListener { task ->
    if (task.isSuccessful) {
        val reviewInfo = task.result
        val flow = manager.launchReviewFlow(activity, reviewInfo)
        flow.addOnCompleteListener { /* proceed */ }
    }
}
```

## Timing Framework

### The Success Moment Trigger

Define 1–3 "success moments" in your app where users are most satisfied:

| App Type | Good Prompt Moments | Bad Prompt Moments |
|----------|--------------------|--------------------|
| Fitness | After completing a workout | After skipping a session |
| Productivity | After completing a project/task | After a failed save or sync error |
| Games | After winning a level or beating a boss | After losing or failing |
| Finance | After first successful transaction | After a confusing error |
| Meditation | After completing a session | On cold open |
| Shopping | After a successful purchase/delivery | After a failed checkout |

### Session-Based Rules

Only prompt users who meet all criteria:

```
Criteria to prompt:
✓ Sessions >= 3 (not a first-time user)
✓ Time since install >= 3 days
✓ Has completed [activation event] at least once
✓ No crash in last session
✓ No negative signal (error, cancellation) in current session
✓ Not already rated this version
```

## Pre-Prompt Survey (Recommended)

Before triggering the native prompt, show a single in-app question:

```
"Are you enjoying [App Name]?"
  [Yes, love it!]   [Not really]
```

- **"Yes"** → trigger `SKStoreReviewRequest` / Play In-App Review
- **"Not really"** → show a feedback form (email or in-app), **do not** trigger the native prompt

This filters out dissatisfied users before they can rate you 1–2 stars.

**Expected improvement:** 0.3–0.8 stars on average with a pre-prompt filter.

## Version-Gating (iOS)

iOS allows you to reset ratings per version in App Store Connect. Use this strategically:

- **Reset after a major improvement** — If you fixed the top-complained issues
- **Do not reset** after a controversial change that users disliked
- After a reset, run an aggressive (but filtered) prompt campaign in the first 7 days
- Target your most engaged users first (longest session history)

## Recovering from a Rating Drop

### Diagnosis

1. Check which version caused the drop — correlate with release dates
2. Read the 1-star reviews for that period — find the common complaint
3. Fix the issue in the next release
4. Reply to every 1–3 star review (see `review-management` skill)

### Recovery Campaign

After the fix is shipped:
1. Reply to negative reviews: "Fixed in version X.X — please update and let us know"
2. Some users will update their rating after a reply
3. Run a prompt campaign targeted at your most loyal users (highest session count)
4. Do not prompt users who left a negative review

### Timeline

```
Day 0:   Issue identified — hotfix or patch in progress
Day 1–3: Reply to every negative review acknowledging the issue
Day 7:   Fix shipped — reply to previous negative reviews "Fixed in X.X"
Day 8+:  Enable prompt for sessions >= 5, no crash last 7 days
Week 3:  Monitor rating trend — should recover 0.2–0.5 stars in 2–4 weeks
```

## Prompt Frequency

| Platform | Maximum | Recommended |
|----------|---------|-------------|
| iOS | 3× per 365 days (Apple-enforced) | 1–2× per version |
| Android | No hard limit (Google throttles) | 1× per 30 days per user |

Never show the prompt twice in the same session.

## Output Format

### Rating Strategy Plan

```
Current rating: [X.X] ★  ([N] ratings)
Platform: iOS / Android / Both

Success moments identified:
1. [Event name] — fires when [condition]
2. [Event name] — fires when [condition]

Pre-prompt survey: Yes / No
  If yes: "Are you enjoying [App Name]?" → Yes / Not really

Prompt trigger logic:
  Sessions >= [N]
  Days since install >= [N]
  No crash in last [N] sessions
  [Activation event] completed: yes
  Already rated this version: no

Expected outcome: +[X] stars over [N] weeks

Recovery plan (if rating < 4.0):
  1. [Fix] — ship by [date]
  2. [Reply strategy] — [N] reviews to address
  3. [Prompt campaign] — start [date], target [segment]
```

## Related Skills

- `review-management` — Respond to reviews to recover rating
- `onboarding-optimization` — Fix activation issues that drive 1-star reviews
- `android-aso` — Play In-App Review API context
- `retention-optimization` — Engaged users give better ratings
