---
name: crash-analytics
description: When the user wants to monitor, triage, or reduce their app's crash rate — including setting up Crashlytics, prioritizing which crashes to fix first, interpreting crash data, and understanding how crashes affect App Store ranking. Use when the user mentions "crash", "crashlytics", "crash rate", "ANR", "app not responding", "crash-free sessions", "crash-free users", "symbolication", "stability", "firebase crashes", "app crashing", or "crash report". For overall analytics setup, see app-analytics.
metadata:
  version: 1.0.0
---

# Crash Analytics

You help triage, prioritize, and reduce app crashes — and understand how crash rate affects App Store discoverability and ratings.

## Why Crash Rate Is an ASO Signal

- **App Store ranking** — Apple's algorithm penalizes apps with high crash rates
- **App Store featuring** — High crash rate disqualifies editorial consideration
- **Ratings** — Crashes are the #1 cause of 1-star reviews
- **Retention** — A crash in the first session destroys Day 1 retention

**Target:** crash-free sessions > 99.5% | crash-free users > 99%

## Tools

| Tool | What it provides | Setup |
|------|-----------------|-------|
| **Firebase Crashlytics** | Real-time crashes, ANRs, symbolicated stack traces | Add `FirebaseCrashlytics` pod/SPM package |
| **App Store Connect** | Crash rate trend, crashes per session | Built-in, no code needed |
| **Xcode Organizer** | Aggregated crash logs from TestFlight + App Store | Xcode → Window → Organizer → Crashes |
| **MetricKit** | On-device diagnostics, hang rate, launch time | iOS 13+, automatic |

**Recommended:** Crashlytics (real-time alerts + search) + App Store Connect (trend validation)

## Crashlytics Setup

### iOS (Swift)

```swift
// AppDelegate or @main App struct
import FirebaseCore
import FirebaseCrashlytics

@main
struct MyApp: App {
    init() {
        FirebaseApp.configure()
        // Crashlytics is auto-initialized
    }
}
```

### Non-fatal errors (track without crashing)

```swift
// Log a non-fatal error
Crashlytics.crashlytics().record(error: error)

// Log a custom key for debugging context
Crashlytics.crashlytics().setCustomValue(userId, forKey: "user_id")
Crashlytics.crashlytics().setCustomValue(screenName, forKey: "current_screen")
```

### Android (Kotlin)

```kotlin
// build.gradle (app)
implementation("com.google.firebase:firebase-crashlytics:18.x.x")

// No additional code needed — auto-captures unhandled exceptions
// For non-fatal:
FirebaseCrashlytics.getInstance().recordException(throwable)
```

## Triage Framework

Not all crashes are equal. Prioritize by impact:

**Priority Score = Crash Frequency × Affected Users × User Segment Weight**

| Priority | Criteria | Response time |
|----------|---------|---------------|
| P0 — Critical | Crashes on launch / checkout / core feature; >1% of sessions | Fix today |
| P1 — High | Crashes in common flows; >0.1% of sessions | Fix this release |
| P2 — Medium | Edge case crashes; <0.1% of sessions | Fix next release |
| P3 — Low | Rare, non-blocking crashes; <0.01% of sessions | Backlog |

### Crashlytics Dashboard Triage

1. Sort by **"Impact"** (unique users affected), not frequency
2. Group: `onboarding`, `checkout`, `core feature`, `background`, `launch`
3. Assign P0/P1 to the top 3–5 issues
4. Set a **velocity alert** in Crashlytics for any issue affecting >0.5% of users

## Reading a Crash Report

```
Fatal Exception: com.example.NullPointerException
  at com.example.UserProfileVC.loadData:87
  at com.example.HomeVC.viewDidLoad:45

Keys:
  user_id: 12345
  current_screen: "home"
  app_version: "2.3.1"
  os_version: "iOS 17.3"
```

**Steps to debug:**
1. Open the file and line in Xcode (`UserProfileVC.swift:87`)
2. Check what can be nil at that point
3. Reproduce with the user context (OS version, device, screen)
4. Write a failing test before fixing

## Symbolication

Crashlytics auto-symbolicates if you upload dSYMs. If you see unsymbolicated traces:

```bash
# Manually upload dSYMs
./Pods/FirebaseCrashlytics/upload-symbols -gsp GoogleService-Info.plist -p ios MyApp.app.dSYM
```

For Bitcode-enabled builds, download dSYMs from App Store Connect → Activity → Build → dSYMs.

## App Store Connect Crash Data

- **App Store Connect → App Analytics → Crashes** — Crash rate trend per version
- Compare crash rate before and after each release
- A spike on a specific version = regression in that release

**Crash rate formula:** Crashes / Sessions × 100

## Release Strategy to Minimize Blast Radius

Use phased releases to catch crashes before full rollout:

**iOS:** App Store Connect → Version → Phased Release (7-day rollout: 1% → 2% → 5% → 10% → 20% → 50% → 100%)

**Android:** Play Console → Production → Managed publishing → Rollout percentage

**Rule:** Monitor Crashlytics for 24 hours at each phase. If crash rate increases >0.2%, pause rollout.

## Responding to Crash-Driven 1-Star Reviews

1. Identify the app version where crash-related 1-stars appeared
2. Fix the crash
3. Reply to each crash-related review: "Fixed in version X.X — please update"
4. After update ships, use `rating-prompt-strategy` to recover rating

## Output Format

### Crash Audit Report

```
Stability Report — [App Name] v[version] ([period])

Crash-free sessions: [X]%  (target: >99.5%)
Crash-free users:    [X]%  (target: >99%)
Top crash issues:

P0 Issues (fix immediately):
  #1 [Exception type] — [X] users, [X]% of sessions
     File: [filename:line]
     Cause: [hypothesis]
     Fix: [specific action]

P1 Issues (this release):
  #2 [Exception type] — [X] users, [X]% of sessions
     ...

Action Plan:
  Today:     Fix P0 issue #1 → release hotfix
  This week: Fix P1 issues #2, #3 → include in v[X.X]
  Monitoring: Set velocity alert at 0.5% session threshold
```

## Related Skills

- `app-analytics` — Full analytics stack; Crashlytics is one piece
- `rating-prompt-strategy` — Recover rating after fixing crash-driven 1-stars
- `review-management` — Respond to crash-related reviews
- `retention-optimization` — Crashes on Day 1 destroy retention metrics
- `app-store-featured` — Crash rate > 2% disqualifies editorial featuring
