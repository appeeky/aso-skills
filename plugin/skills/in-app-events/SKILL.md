---
name: in-app-events
description: When the user wants to create, plan, or optimize App Store In-App Events — the event cards that appear on the Today tab, search results, and your product page. Use when the user mentions "in-app event", "App Store event", "event card", "Today tab", "live event", "challenge", "game event", "seasonal event card", or wants visibility beyond organic search. For general ASO, see aso-audit. For seasonal keyword strategy, see seasonal-aso.
metadata:
  version: 1.0.0
---

# In-App Events

You help the user plan, write, and optimize **App Store In-App Events** — event cards that surface in search, the Today tab, and the product page, driving installs and re-engagement without paid media.

## What In-App Events Are

In-App Events are time-limited content cards on the App Store. They appear:
- **Today tab** (editorial + algorithmic)
- **Search results** (alongside app results)
- **Your product page**
- **Personalized recommendations** (for lapsed users)

**Key advantage:** Existing users who haven't opened your app recently are notified of events. Non-users see them as discovery.

## Event Types

| Type | Best For | Example |
|------|----------|---------|
| **Challenge** | User-generated competition | "30-Day Streak Challenge" |
| **Competition** | Ranked or scored contest | "Weekly High Score Leaderboard" |
| **Live Event** | Real-time activity | "Live Q&A with Experts" |
| **Major Update** | Significant new feature | "Introducing AI Coach" |
| **Premiere** | First-time content launch | "New Series: Morning Routines" |
| **Special Event** | Seasonal or themed moment | "Holiday Collection Unlocked" |

## Event Card Specs

| Field | Limit | Notes |
|-------|-------|-------|
| **Event name** | 30 chars | Appears prominently — keyword-conscious |
| **Short description** | 50 chars | Below the name on cards |
| **Long description** | 120 chars | Shown in expanded event view |
| **Event card image** | 2160×1080px | 2:1 ratio, PNG/JPG, no text required |
| **Badge** | — | Chosen from the 6 type badges above |
| **Duration** | Up to 31 days | Start and end time required |

Up to **10 events** can be live or scheduled at a time.

## Planning Workflow

### Step 1 — Event Idea Selection

1. Check for `app-marketing-context.md`
2. Evaluate event type based on app category:

| App Type | Best Event Types |
|----------|----------------|
| Games | Challenge, Competition, Major Update |
| Fitness | Challenge, Live Event, Major Update |
| Productivity | Major Update, Premiere |
| Social / Community | Live Event, Challenge |
| Streaming / Content | Premiere, Special Event |
| Utility | Major Update, Special Event |

3. Identify the primary goal:
   - **Re-engagement** → Use notification-triggering events (any type)
   - **New user acquisition** → Focus on Today tab visibility (Challenge or Competition)
   - **Feature launch** → Major Update type

### Step 2 — Write Event Copy

**Event name (30 chars) — rules:**
- Lead with the user benefit or action, not your app name
- Include relevant keywords where natural
- ✅ "30-Day Habit Challenge" | ❌ "AppName Challenge 2026"

**Short description (50 chars):**
- Answer "what's in it for me?" in one line
- ✅ "Build a streak and win exclusive rewards"

**Long description (120 chars):**
- Expand on the short description: what, when, and why to join
- ✅ "Join our 30-day challenge. Complete daily habits, hit your streak, and unlock your achievement badge."

### Step 3 — Event Card Image

Spec: 2160×1080px, 2:1 ratio

**Best practices:**
- No text needed (name/description appear as overlay) — but a short tagline is allowed
- High contrast, bold visual that works at small thumbnail size
- Show the outcome or reward, not just the app UI
- Test thumbnail at 390×195px to verify legibility

### Step 4 — Submit in App Store Connect

1. App Store Connect → Your App → In-App Events → `+`
2. Fill all required fields + upload image
3. Submit for review (typically 24–48 hours)
4. Schedule start/end times

**Submit 3–5 days before** the desired start date to account for review time.

## Optimization Tips

### Maximize Today Tab Placement

Apple's algorithm favors events that are:
- **Timely** — tied to real-world moments (holidays, trends, app anniversaries)
- **High quality** — polished images, complete descriptions
- **Engaging** — event types that drive sessions (challenges > updates)
- **Consistent** — apps that run regular events get better recurring placement

**Run at least one event per month** to maintain algorithmic eligibility.

### Keyword Visibility in Search

Event names and short descriptions are **indexed by the App Store search algorithm**.

- Include 1–2 target keywords in the event name naturally
- The short description can reinforce secondary keywords
- Use `keyword-research` skill to validate which terms to include

### Re-engagement Notification

Users who have downloaded your app but haven't opened it recently receive a push notification for your event automatically — no opt-in required. This is the highest-value feature of In-App Events.

**Make the event name the notification subject line** — write it to be compelling as a standalone message.

## Output Format

### Event Brief

```
📅 Event: [Name — 30 chars]
   Type:  [Badge type]
   Dates: [Start] → [End]

Copy:
  Short:  [50 chars]
  Long:   [120 chars]

Image direction:
  Visual: [describe the scene/concept]
  Style:  [photography / illustration / abstract]
  Key element: [the reward, the action, the outcome]

Goals:
  Primary: [re-engagement / acquisition / feature launch]
  KPIs: [sessions spike, downloads, event page views]

Submit by: [date — 4 days before start]
```

### Event Calendar (monthly)

```
Week 1:  [Event name] — [type] — [dates]
Week 2:  [No event / buffer]
Week 3:  [Event name] — [type] — [dates]
Week 4:  [Event name] — [type] — [dates]
```

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| App name in event name | Lead with the user benefit |
| Generic image (screenshot of UI) | Show the reward/outcome visually |
| Events shorter than 7 days | Minimum 7 days for Today tab consideration |
| Submitting day-of | Submit 4–5 days early for review |
| No recurring schedule | Run 1+ events/month for sustained placement |

## Related Skills

- `seasonal-aso` — Align event timing with keyword seasonal peaks
- `screenshot-optimization` — Apply same visual best practices to event images
- `app-store-featured` — Events increase editorial feature eligibility
- `retention-optimization` — Track re-engagement lift from events
