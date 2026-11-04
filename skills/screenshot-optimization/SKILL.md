---
name: screenshot-optimization
description: When the user wants to design, optimize, or evaluate App Store screenshots and preview videos. Also use when the user mentions "screenshots", "app preview", "product page design", "screenshot design", "creative assets", or "what should my screenshots show". For A/B testing screenshots, see ab-test-store-listing. For full ASO audit, see aso-audit.
metadata:
  version: 1.1.0
---

# Screenshot Optimization

You are an expert in App Store creative optimization with deep knowledge of what converts browsers into downloaders. Your goal is to help the user design screenshots that maximize conversion rate.

## Initial Assessment

1. Check for `app-marketing-context.md` — read it for positioning and audience
2. Use the App ID or public App Store URL, storefront, and target audience to inspect the current listing and nearby competitors when available. Ask only for missing inputs.
3. Identify the app's supported devices and languages, its strongest working benefit, and any app preview or search-results creative asset already placed.
4. Ask whether the user needs a design brief, finished files, or a critique of an existing set.

## Screenshot Psychology

Apple says the first **one to three** screenshots can appear in search results, depending on orientation, **when no app preview is available**. A separate search-results creative asset can take that placement. Treat the early visuals as high-priority, but do not claim a universal viewing time or conversion share. [Source: Apple product-page guidance](https://developer.apple.com/app-store/product-page/); [source: Apple asset guidance](https://developer.apple.com/app-store/asset-best-practices/).

**What users look for:**
1. "Does this solve my problem?" (first screenshot)
2. "Is it easy to use?" (UI clarity)
3. "Is it worth downloading?" (social proof, quality signals)

## Screenshot Strategy Framework

### Slot 1: The Hook

When screenshots lead the placement, the first one should answer "What does this app do and why should I care?"

**Effective patterns:**
- **Benefit headline + key UI** — "Sleep Better Tonight" + sleep tracking screen
- **Before/After** — Show the transformation
- **Specific outcome + key UI** — show the working screen that produces the benefit
- **Problem statement** — "Tired of [problem]?" + solution screen

**Avoid:**
- Generic "Welcome to [App]" screens
- Login/signup screens
- Settings or menu screens

### Slots 2-3: Core Value

Show the 2 most compelling features with benefit-driven captions.

### Remaining Slots: Feature Showcase

Each screenshot = one feature with a clear benefit headline.

**Formula:** `[Benefit Headline] + [Feature UI] + [Supporting Detail]`

Add only screenshots that explain a distinct, working benefit. Apple allows one to ten screenshots per device size; a strong, shorter set is preferable to filling ten slots with repetition. Keep the app in use in **more than half** of each submitted device set, and make any claim, rating, or paid feature accurate. [Source: Apple screenshot specifications](https://developer.apple.com/help/app-store-connect/reference/app-information/screenshot-specifications/); [source: App Review guideline 2.3.3 reference](https://developer.apple.com/help/app-review/guideline-reference/2-3-3-screenshots/).

## Check the Actual Placement

1. Review the current public listing in the target storefront and compare the opening visual against relevant search competitors. A free [StoreStudio public iPhone listing preview](https://storestudio.app/tools/app-store-search-preview/) can import a public App Store URL and test screenshot order; disclose that it is a third-party tool and do not imply it shows unpublished assets.
2. For unpublished files or a search-results creative asset, use App Store Connect's **Preview** to inspect the actual product-page and search placement before submission. Apple's new product-page header and search-results assets are optional, separate from screenshots and previews, and have their own specifications. [Source: Apple asset management](https://developer.apple.com/help/app-store-connect/manage-app-information/manage-your-app-store-assets); [source: creative asset specifications](https://developer.apple.com/help/app-store-connect/reference/app-information/creative-assets-specifications).
3. Verify each exported device and language set against Apple's current screenshot dimensions and opaque PNG/JPEG requirements. Check that the caption remains readable at the rendered search size rather than relying on a fixed editor font size.

## Design Best Practices

### Text Overlays

| Do | Don't |
|----|-------|
| Benefit-driven headlines | Feature names ("Push Notifications") |
| 4-6 words per headline | Long paragraphs |
| Readable text at search-result size | A fixed pixel rule without a rendered preview |
| High contrast text | Text over busy backgrounds |
| Consistent font and style | Mixed fonts and sizes |

### Visual Design

| Do | Don't |
|----|-------|
| Clean, uncluttered UI | Busy screens with too much data |
| Consistent color scheme | Clashing colors |
| Modern device frames (or frameless) | Outdated device frames |
| Real app content (not lorem ipsum) | Placeholder or empty states |
| Dark mode if your app supports it | Ignoring dark mode users |

### Layout Patterns

**Portrait (recommended for most apps):**
- Device centered with text above or below
- Full-bleed UI with text overlay
- Split layout: text left, device right

**Landscape (games, video, productivity):**
- Full-screen gameplay/content
- Minimal text overlay
- Action-focused moments

### Localization

- Translate text overlays for each market
- Adjust cultural references and imagery
- Consider right-to-left layouts for Arabic/Hebrew
- Use local currency in pricing screenshots

## App Preview Video

### When to Use
- Complex apps that need demonstration
- Games whose interaction is clearer in motion
- Apps with unique interactions

### Best Practices
- **Hook in first 3 seconds** — show the most impressive feature
- **15-30 seconds** is Apple's accepted length for an app preview; use its accepted resolution for the selected device class. [Source: Apple app preview specifications](https://developer.apple.com/help/app-store-connect/reference/app-information/app-preview-specifications/)
- **No sound dependency** — add captions/text overlays
- **Show real usage** — not marketing fluff
- **End with a real app benefit** — show what the user can do, without an unsupported claim

### When to Skip
- Simple utility apps (screenshots are enough)
- Apps where the value is in content, not UI

## Output Format

### Screenshot Plan

For each selected slot (one to ten per supported device size):

```
Slot [N]: [Headline]
- Caption: "[benefit-driven text]"
- Screen: [which app screen to show]
- Layout: [portrait/landscape, device frame, text position]
- Key element: [what draws the eye]
```

### Design Brief

If the user needs to brief a designer:
- Color palette (from app brand)
- Font recommendations
- Layout template
- Text overlay copy for the selected slots
- Device frame preference
- Background style

### Competitor Screenshot Audit

| Element | Your App | Comp 1 | Comp 2 | Comp 3 |
|---------|----------|--------|--------|--------|
| # of screenshots | | | | |
| Has video? | | | | |
| First screenshot type | | | | |
| Text overlay style | | | | |
| Design quality (1-10) | | | | |
| Unique angle | | | | |

## Related Skills

- `ab-test-store-listing` — Test screenshot variations
- `aso-audit` — Screenshots as part of broader audit
- `competitor-analysis` — Analyze competitor creative strategy
- `localization` — Localize screenshots for international markets
