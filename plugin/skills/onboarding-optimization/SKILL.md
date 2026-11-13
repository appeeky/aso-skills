---
name: onboarding-optimization
description: When the user wants to improve their app's onboarding experience, increase activation rate, reduce Day 1 drop-off, or optimize the first-run flow. Use when the user mentions "onboarding", "first-run", "activation", "tutorial", "day 1 retention", "new user flow", "permission prompts", "sign-up conversion", "onboarding funnel", or "users dropping off early". For overall retention strategy, see retention-optimization. For paywall placement, see monetization-strategy.
metadata:
  version: 1.0.0
---

# Onboarding Optimization

You optimize the first-run experience to maximize activation — the moment a new user completes the core action that predicts long-term retention.

## The Activation Principle

**Activation ≠ sign-up.** Activation is the first time the user gets real value from your app. Identify it before anything else.

| App Type | Activation Event |
|----------|-----------------|
| Fitness | First workout completed |
| Productivity | First task or project created |
| Social | First connection made or content posted |
| Finance | First account linked or budget set |
| Games | First level or match completed |
| Meditation | First session completed |
| Photo/Video | First photo edited or exported |

**Rule:** Everything in onboarding should funnel toward that one activation event as fast as possible.

## Initial Assessment

1. Check for `app-marketing-context.md`
2. Ask: **What is your activation event?**
3. Ask: **What % of new users reach it within 24 hours?** (baseline)
4. Ask: **Where do users drop off?** (which step, if known)
5. Ask: **How long does your current onboarding take?** (steps, screens)
6. Ask: **Do you have Firebase/Mixpanel funnels set up?**

## Onboarding Audit Framework

### Step 1 — Map the Current Flow

List every screen from app open to activation:

```
App open → [Screen 1] → [Screen 2] → ... → Activation event
```

Flag each screen: **Required** | **Value-adding** | **Friction only**

Remove or defer everything that is friction-only.

### Step 2 — Score Each Screen

| Factor | Question | Score |
|--------|---------|-------|
| **Necessity** | Can the user reach activation without this? | 0 = skip it |
| **Timing** | Is this the right moment for this ask? | |
| **Value exchange** | Does the user understand why this benefits them? | |
| **Cognitive load** | How many decisions does this require? | |

### Step 3 — Permission Prompt Timing

Permissions are the #1 drop-off point. Rules:

| Permission | When to ask | Never ask |
|-----------|------------|-----------|
| Push notifications | After activation, not before | On cold open |
| Location | When the feature needs it | During sign-up |
| Camera/microphone | Contextually, when used | Before any value |
| Contacts | When the social feature is used | In onboarding |
| Tracking (ATT) | After user is invested | On first open |

**The pre-permission screen:** Always show a native-looking explanation screen before the system prompt. Users who understand the "why" grant at 2–3× the rate.

### Step 4 — Sign-Up Friction

| Pattern | Impact | Recommendation |
|---------|--------|---------------|
| Required sign-up before value | High drop-off | Defer to post-activation |
| Only email+password | Medium drop-off | Add Sign in with Apple + Google |
| Long profile setup | High drop-off | Ask 1 question max, defer rest |
| Email verification required | Kills momentum | Defer or make optional |

**Guest mode / try before sign-up:** Allow users to experience the core value before requiring an account. Conversion from guest → registered is typically 40–60% vs. a hard gate at 15–30%.

## Onboarding Patterns by App Type

### Value-First (recommended for most apps)

```
Open → Core feature demo / interactive preview
     → Activation moment
     → "Save your progress" → Sign-up
     → Permission asks
     → Personalization
```

### Personalization-First (works for health, fitness, AI apps)

```
Open → 3–5 personalization questions (show progress bar)
     → "Your plan is ready" reveal moment
     → Sign-up gate (invested now)
     → Activation
```

### Social-First (social apps)

```
Open → Sign in with Apple/Google (single tap)
     → Find friends / follow suggestions
     → First feed with content
     → Activation (post, comment, react)
```

## Funnel Benchmarks

| Step | Benchmark | Poor |
|------|-----------|------|
| App open → first interaction | > 85% | < 70% |
| Sign-up conversion | > 60% | < 40% |
| Push permission grant | > 50% | < 30% |
| Activation (D0) | > 40% | < 20% |
| Day 1 retention | > 30% | < 15% |

## Personalization Questions

If you include personalization, follow these rules:
- Maximum **3–5 questions** in onboarding
- Each question must visibly affect the experience
- Show a progress indicator (step 1 of 3)
- Use visual selections, not text inputs
- Never ask for data you won't use immediately

## Paywall Placement in Onboarding

**Rule:** Show value before the paywall.

| Placement | Works When |
|-----------|-----------|
| Before activation | Almost never — user has no reference for value |
| At activation | Strong — user just felt the value |
| Post-activation, D1 | Strongest for subscription apps |
| Contextual (feature gate) | Good for feature-based paywall |

See `monetization-strategy` for paywall design details.

## Output Format

### Onboarding Audit

```
Current flow:
  [Screen 1] — Required / friction
  [Screen 2] — Value-adding
  [Screen 3] — Required / friction
  ...
  [Activation event] — Step N

Drop-off analysis:
  Biggest drop: [screen] ([X]% exit rate if known)
  Estimated cause: [hypothesis]

Recommended changes:
1. [Remove / defer X] — Expected impact: [lift in activation]
2. [Reorder Y before Z] — Expected impact: [rationale]
3. [Add pre-permission screen for Z] — Expected impact: [grant rate improvement]

Revised flow:
  Open → [Screen] → [Screen] → Activation → Sign-up → Permissions
  Estimated steps removed: [N]
  Estimated time to activation: [Xs → Xs]
```

### Permission Screen Copy Template

```
[Icon representing the permission]

[Benefit headline — what the user gets]
e.g., "Get notified when your goal is complete"

[One-line explanation]
e.g., "We'll only send you reminders you set — no spam."

[Allow button]     [Not now]
```

## Related Skills

- `retention-optimization` — Day 7/30 retention strategy
- `monetization-strategy` — Paywall placement and trial design
- `ab-test-store-listing` — Test onboarding variants
- `app-analytics` — Set up activation funnel tracking
- `rating-prompt-strategy` — When to ask for a rating post-activation
