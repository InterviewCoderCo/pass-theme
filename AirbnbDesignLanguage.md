# Airbnb Design Language System: The Complete Reference Guide

Airbnb's Design Language System (DLS) represents one of the most influential design systems in tech, born from necessity when multiple designers across platforms created inconsistent experiences. Launched in **April 2016** under the leadership of **Karri Saarinen**, the DLS unified iOS, Android, and web under four guiding principles: **Unified**, **Universal**, **Iconic**, and **Conversational**. The system continues to evolve, with a major 2025 redesign introducing dimensional animations and a new "Lava" format for icons.

---

## Origins and design philosophy shaped modern design systems

The DLS project began in **late 2015** when Airbnb's design department had grown to nearly a dozen functional teams, creating coherence challenges that multiplied exponentially. The original team—including designers Karri Saarinen, Bek Stone, Amber Cartwright, and engineers Adam Michela and Michael Bachand—cleared their calendars and reserved an external studio to audit existing designs and identify breaking points.

**The core philosophy rejects atomic design** in favor of treating components as "elements of a living organism" with function, personality, and the ability to evolve independently. Each component has required elements (title, text, icon, image) and optional elements, avoiding complicated networks of interconnected parts.

The four principles that govern all design decisions:

- **Unified**: Each piece contributes positively to the system at scale with no isolated features
- **Universal**: Welcoming and accessible for Airbnb's global community regardless of language
- **Iconic**: Focused design that speaks boldly and clearly
- **Conversational**: Motion breathes life into products and communicates with users

The "Belong Anywhere" concept, introduced during the **2014 rebrand** by DesignStudio, fundamentally shapes the visual language. The Bélo logo embodies four elements: people (rounded community shape), places (location pin), love (embedded heart), and Airbnb (the letter A).

---

## Typography: Cereal typeface specifications and usage

**Airbnb Cereal**, designed in collaboration with **Dalton Maag** over 18 months and released in **May 2018**, was A/B tested with over 2 million users across 30+ iterations. The name references Airbnb's origin story—founders Brian Chesky and Joe Gebbia sold "Obama O's" cereal to fund their startup in 2008.

### Complete weight family

| Weight    | CSS Value | Use Case                             |
| --------- | --------- | ------------------------------------ |
| Light     | 300       | Subtle secondary text, large display |
| Book      | 400       | Primary UI text, body paragraphs     |
| Medium    | 500       | Subheadings, emphasis, labels        |
| Bold      | 700       | Headlines, buttons, primary emphasis |
| ExtraBold | 800       | Marketing headlines, large display   |
| Black     | 900       | Billboards, environmental signage    |

### Key design features

The typeface features a **taller x-height** for enhanced legibility at small sizes, **widened apertures** (larger openings in letters like 'c', 'e', 'a') for better letter distinction, and balanced stroke weights optimized for screens. Notably, the 'a' and 'b' characters can be drawn with a single continuous stroke, connecting to the Bélo logo design.

### Typography scale example

| Style Name | Size | Line-Height | Letter-Spacing |
| ---------- | ---- | ----------- | -------------- |
| TextTitle3 | 24px | 32px (133%) | 2              |
| Body       | 16px | 24px (150%) | 0              |
| Caption    | 14px | 20px (143%) | 0              |

The system uses **rem units** for responsive text sizing—30% of Airbnb users use non-default font sizes. Optimal line length is **45-75 characters**, and line-height recommendations range from **145-150%** of font size.

### Open-source alternatives

Since Cereal is proprietary and not publicly available, recommended alternatives include:

- **Inter** (Google Fonts): Best match for UI use with large x-height
- **Manrope** (Google Fonts): Clean geometric sans, 7 weights
- **Circular** (Lineto): Premium, very similar warmth
- **Proxima Nova** (Mark Simonson): Professional, widely used

---

## Color system with complete hex values

The Airbnb color palette centers on **Rausch Red**, named after **19 Rausch Street in San Francisco**—the apartment where founders Brian Chesky and Joe Gebbia hosted their first guests in 2007.

### Primary brand colors

| Color Name              | Hex Code | RGB           | Pantone       | Usage                            |
| ----------------------- | -------- | ------------- | ------------- | -------------------------------- |
| **Rausch (Original)**   | #FF5A5F  | 255, 90, 95   | PMS 178 C     | Classic brand color              |
| **Rausch (Current)**    | #FF385C  | 255, 56, 92   | —             | Updated vibrant version          |
| **Babu (Teal)**         | #00A699  | 0, 166, 153   | PMS 3272 C    | Success states, secondary accent |
| **Arches (Orange)**     | #FC642D  | 252, 100, 45  | PMS 165 C     | Warnings, attention              |
| **Hof (Dark Gray)**     | #484848  | 72, 72, 72    | PMS 2336 C    | Primary text                     |
| **Foggy (Medium Gray)** | #767676  | 118, 118, 118 | Cool Gray 9 C | Secondary text                   |

### Semantic color usage

| Purpose              | Color      | Hex      | Context                          |
| -------------------- | ---------- | -------- | -------------------------------- |
| Success/Positive     | Babu       | #00A699  | Confirmations, verified badges   |
| Primary Action       | Rausch     | #FF385C  | CTAs, brand interactions         |
| Warning              | Arches     | #FC642D  | Important notices, alerts        |
| Error                | Custom Red | ~#C13515 | Form validation, critical alerts |
| Text Primary         | Hof        | #222222  | Main content                     |
| Text Secondary       | Foggy      | #717171  | Muted content                    |
| Background           | White      | #FFFFFF  | Primary surfaces                 |
| Background Secondary | Light Gray | #F7F7F7  | Cards, sections                  |

### Dark mode status

Airbnb does **not currently offer native dark mode** as of December 2024, despite being a highly requested feature. Third-party browser extensions apply custom dark themes with backgrounds around #121212-#222222.

### Accessibility consideration

The primary Rausch Red (#FF5A5F) with white text **does not pass WCAG AA contrast requirements** (achieves ~3.5:1 vs required 4.5:1). Airbnb uses multiple visual indicators beyond color alone and ensures text colors like Hof (#484848) achieve 7.0:1 contrast on white.

---

## Icon system design specifications

Icons follow the DLS principles and are organized into five categories: **Navigation**, **Marquees**, **Content**, **Image**, and **Specialty**.

### Icon grid and sizing

| Specification     | Value                              |
| ----------------- | ---------------------------------- |
| Base Grid         | 8px alignment                      |
| Standard Sizes    | 16px, 24px, 32px, 40px, 64px, 80px |
| Stroke Width      | 2px base (4px for certain styles)  |
| Export Resolution | 512×512px standard                 |
| Isometric Angle   | 30°–30°–30°                        |

The 2025 redesign introduced a **softer, more playful** icon style with curved edges and rich details. VP of Design Teo Connor describes them as having "tons of utility, universal language, and playful" characteristics.

### Lottie animation library

Airbnb created **Lottie** in 2017, releasing it open-source. Named after Charlotte "Lotte" Reiniger, a German animation pioneer, it parses After Effects animations exported as JSON via the Bodymovin plugin.

**GitHub repositories:**

- `lottie-android`: 35.5k stars, Apache 2.0 license
- `lottie-ios`: 26.6k stars, supports iOS/macOS/tvOS/visionOS
- `lottie-web`: SVG, canvas, and HTML renderers

**Implementation example:**

```javascript
lottie.loadAnimation({
  container: element,
  renderer: 'svg',
  loop: true,
  autoplay: true,
  path: 'animation.json',
})
```

### Lava format (2025)

The May 2025 redesign introduced **Lava**, a proprietary 3D animated icon format with alpha channel transparency. It functions like a micro-video optimized for UI, with Airbnb filing a patent for the format. Target file size is under **500KB for 2-second animations**.

---

## Illustration style and character design principles

Jennifer Hom, Head of Illustration, established four core principles:

1. **Grounded**: Mature aesthetic, moving away from bubbly, childlike styles
2. **Scalable**: Works across platforms and devices at many sizes
3. **Lightweight**: Minimal, simple, with intentional white space
4. **Diverse**: Accurate representation of different races, ages, abilities, body types

### Character design requirements

Illustrations must embrace differences in age, race, disability, religion, orientation, and gender. Artists are required to **reference real photos** of hosts, guests, and community members—never generalizing or stereotyping. Characters with visible disabilities (prosthetic limbs) and invisible disabilities (neurodiversity indicators) are included.

### When to use illustrations vs. photography

| Use Illustrations              | Use Photography        |
| ------------------------------ | ---------------------- |
| Representing people/community  | Property listings      |
| Abstract concepts              | Amenity verification   |
| Empty states, onboarding       | Host profiles          |
| Cross-platform consistency     | Experiences/tours      |
| Complex message simplification | Trust-building moments |

---

## Motion design and animation timing

Airbnb uses a **declarative transition definition system** for iOS that abstracts timing details:

```swift
let transitionDefinition: TransitionDefinition = [
  SearchInput.background: .blur,
  SearchInput.topBar: .translateY(-40),
  SearchInput.bottomBar: .edgeTranslation(.bottom),
  SearchInput.whereCard: .sharedElement,
]
```

### Animation types

| Type                      | Usage                      |
| ------------------------- | -------------------------- |
| `.crossfade`              | Opacity transitions        |
| `.blur`                   | Background blur effects    |
| `.edgeTranslation`        | Slide from screen edges    |
| `.sharedElement`          | Shared element transitions |
| `.translateY/.translateX` | Position translations      |

### Spring animation configuration

Airbnb uses spring physics extensively, with React Native configurations:

```javascript
{
  friction: 7,
  tension: 40,
  springTension: 100,
  springFriction: 1,
  snapVelocity: 8
}
```

### Standard easing functions

- `Easing.ease`: Standard ease (iOS default)
- `Easing.bezier(x1, y1, x2, y2)`: Custom cubic-bezier
- `Easing.elastic(bounciness)`: Spring oscillation
- `Easing.bounce`: Bouncing effect

The famous **heart/like animation** uses Lottie with optional caching for frequently-used animations, enabling designers to ship complex animations without engineers recreating them by hand.

---

## Component patterns with exact specifications

### Search bar

| Property         | Value                                     |
| ---------------- | ----------------------------------------- |
| Shape            | Pill (fully rounded)                      |
| Border Radius    | 100vw or 50px                             |
| Height           | 48px (mobile), 55-80px (desktop expanded) |
| Background       | #FFFFFF                                   |
| Shadow (default) | 0 3px 4px rgba(0,0,0,0.15)                |
| Shadow (hover)   | 0 6px 12px rgba(0,0,0,0.17)               |
| Transition       | all 250ms ease                            |

### Buttons

| Type      | Background                  | Text    | Border Radius | Padding   |
| --------- | --------------------------- | ------- | ------------- | --------- |
| Primary   | gradient: #E61E4D → #D70466 | White   | 8px           | 14px 24px |
| Secondary | White                       | #222222 | 8px           | 14px 24px |
| Tertiary  | Transparent                 | #222222 | 8px           | 10px 16px |

Button sizes: Small (36px height), Medium (48px), Large (56px)

### Input fields

| Property      | Value                                |
| ------------- | ------------------------------------ |
| Height        | 56px                                 |
| Border        | 1px solid #b0b0b0                    |
| Border Radius | 8px                                  |
| Focus Border  | 2px solid #222222                    |
| Error Border  | #C13515                              |
| Padding       | 26px 12px 10px 12px (floating label) |

### Toggle switches

| Property      | Value             |
| ------------- | ----------------- |
| Track Width   | 48px              |
| Track Height  | 28px              |
| Knob Diameter | 24px              |
| Off Color     | #b0b0b0           |
| On Color      | #222222           |
| Transition    | 200ms ease-in-out |

### Cards

| Property            | Value                            |
| ------------------- | -------------------------------- |
| Image Border Radius | 12px                             |
| Hover Shadow        | 0 6px 16px rgba(0,0,0,0.12)      |
| Title Font          | 16px/600 weight                  |
| Description Font    | 14px/400 weight                  |
| Spacing Scale       | 4px, 8px, 12px, 16px, 24px, 32px |

### Modals and bottom sheets

| Property      | Desktop Modal          | Mobile Bottom Sheet |
| ------------- | ---------------------- | ------------------- |
| Max Width     | 568px / 744px / 1032px | 100%                |
| Border Radius | 12px                   | 12px 12px 0 0       |
| Overlay       | rgba(0,0,0,0.5)        | rgba(0,0,0,0.5)     |
| Drag Handle   | —                      | 30px × 4px, #dddddd |
| Animation     | Overlay fade 450ms     | Sheet slide 300ms   |

---

## Photography and image specifications

### Photo requirements

| Specification      | Value                   |
| ------------------ | ----------------------- |
| Minimum Resolution | 1024 × 683px            |
| Recommended        | 1920 × 1280px at 300dpi |
| Compression Target | 1440 × 960px at 72dpi   |
| Aspect Ratio       | 3:2 (landscape)         |
| Profile Photos     | 400 × 400px (1:1)       |
| Format             | JPEG or PNG             |
| Max File Size      | 10-30 MB                |

### Photography principles

- **Natural light** preferred—open blinds, use golden hour for exteriors
- Shoot **straight ahead** without lens tilt for realistic representation
- **Declutter** spaces, remove personal items
- Show every accessible room with mix of wide, mid-range, and close-up shots
- **20-30 photos** recommended (up to 100 allowed)

### Text overlay specifications

Scrim gradients for text readability:

```css
background: linear-gradient(
  90deg,
  rgba(0, 0, 0, 0.8) 0%,
  rgba(0, 0, 0, 0.4) 50%,
  transparent 100%
);
```

Standard overlay opacity: **40% black** for full overlays, gradient scrims for edge fades.

---

## Mobile patterns and touch targets

### Navigation

Airbnb unified iOS and Android with a **bottom navigation bar** containing frequently-used destinations: saved listings, trips, messages, and search. Platform-specific adaptations apply only to system iconography and contextual actions.

### Touch target requirements

| Standard        | Minimum Size |
| --------------- | ------------ |
| WCAG 2.1 AA     | 24 × 24px    |
| WCAG 2.1 AAA    | 44 × 44px    |
| Google Material | 48 × 48dp    |
| Apple HIG       | 44 × 44pt    |

### Safe area handling

| Device              | Top Safe Area | Bottom Safe Area |
| ------------------- | ------------- | ---------------- |
| iPhone X+ Portrait  | 44pt          | 34pt             |
| With Navigation Bar | 88pt          | 34pt             |

CSS environment variables: `env(safe-area-inset-top)`, `env(safe-area-inset-bottom)`

---

## Accessibility implementation

Airbnb targets **WCAG 2.1 Level AA** compliance and European Accessibility Act requirements.

### Screen reader support

| Platform | Testing Configuration             |
| -------- | --------------------------------- |
| iOS      | VoiceOver with Safari             |
| Android  | TalkBack with Chrome              |
| Desktop  | JAWS with Edge, NVDA with Firefox |

### Automated accessibility testing

- Espresso-based automated testing
- Custom Android Lint rules for accessibility
- CI integration blocking PRs that fail accessibility checks
- Screenshot testing with larger font sizes using Happo

### Reduced motion support

Airbnb respects `prefers-reduced-motion` settings, providing reduced or eliminated animations. Videos are sound-off by default with autoplay prevention options.

### Contrast requirements

| Text Type          | Minimum Ratio |
| ------------------ | ------------- |
| Normal text        | 4.5:1         |
| Large text (18pt+) | 3:1           |
| UI components      | 3:1           |

---

## Recent updates: 2023-2025 evolution

### 2022 Categories redesign

The most significant update in a decade introduced **56 browsable categories** (camping, surfing, yurts, tree houses). AI analyzed text and imagery of 4 million properties for categorization.

### 2023 releases

**Summer (May 2023)**: Airbnb Rooms with Host Passport, total price display, redesigned wishlists with one-tap saving, swipe-to-select calendar.

**Winter**: Guest Favorites category highlighting top-rated properties.

### 2024 updates

Icons experiences launched, with Brian Chesky announcing "flat design is over"—moving toward color, texture, dimensionality, and haptic feedback.

### 2025 major redesign

Complete app rebuild with three pillars: **Homes**, **Services**, **Experiences**. New features include:

- Airbnb Services (chefs, photographers, spa) in 260 cities
- "Lava" animated icon format with 3D transparency
- Redesigned Trips tab as living itinerary with Google Calendar integration
- Guest-to-guest communication features
- What VP Teo Connor describes as "fun, alive, and simple"

---

## 2025 Design Philosophy: "Flat Design is Over"

Brian Chesky's 2024 announcement marked a significant shift in Airbnb's visual direction, fully realized in the 2025 redesign.

### Core Philosophy Shifts

| From (Pre-2025)           | To (2025+)                     |
| ------------------------- | ------------------------------ |
| Flat, minimal surfaces    | Dimensional, textured surfaces |
| Static icons              | Animated "Lava" format icons   |
| Subtle micro-interactions | Bold haptic feedback           |
| Neutral, restrained       | Fun, alive, playful            |
| 2D illustrations          | 3D transparency and depth      |

### The "Lava" Icon Format

Lava is Airbnb's new animated icon system featuring:

| Property             | Specification                       |
| -------------------- | ----------------------------------- |
| Format               | Custom 3D animated vector           |
| Transparency         | Multi-layer with depth              |
| Animation Duration   | 300-600ms for micro-interactions    |
| Idle State           | Subtle breathing/floating animation |
| Interaction Response | Scale + glow on tap                 |
| Color Treatment      | Gradient fills with soft shadows    |

### Dimensional Design Principles

1. **Layered Surfaces**: Cards and modals use subtle shadows and blur to create depth hierarchy
2. **Soft Corners**: Increased border-radius (12-16px) for warmer, more approachable feel
3. **Gradient Accents**: Primary actions use subtle gradients instead of flat colors
4. **Haptic Feedback**: Tactile response on key interactions (button presses, toggles, swipes)
5. **Living Elements**: Ambient micro-animations that respond to user presence

### Spring Animation Updates (2025)

```javascript
// 2025 recommended spring configurations
const springPresets = {
  // Snappy response for buttons and toggles
  snappy: {
    damping: 15,
    stiffness: 400,
    mass: 0.8,
  },
  // Smooth for page transitions
  smooth: {
    damping: 20,
    stiffness: 200,
    mass: 1,
  },
  // Bouncy for success states and celebrations
  bouncy: {
    damping: 10,
    stiffness: 180,
    mass: 0.6,
  },
  // Gentle for ambient/idle animations
  gentle: {
    damping: 25,
    stiffness: 120,
    mass: 1.2,
  },
}
```

---

## Form and Authentication Patterns

### Input Field States

| State    | Border      | Background | Label Color | Animation            |
| -------- | ----------- | ---------- | ----------- | -------------------- |
| Default  | 1px #b0b0b0 | #ffffff    | #717171     | —                    |
| Focused  | 2px #222222 | #ffffff    | #222222     | Border grows outward |
| Filled   | 1px #b0b0b0 | #ffffff    | #717171     | Label floats up      |
| Error    | 2px #C13515 | #fff8f6    | #C13515     | Shake (3x, 4px)      |
| Success  | 2px #008A05 | #f7fff7    | #008A05     | Checkmark fade-in    |
| Disabled | 1px #dddddd | #f7f7f7    | #b0b0b0     | —                    |

### Floating Label Animation

```javascript
// Floating label animation spec
const floatingLabel = {
  // Label moves from center to top
  translateY: {
    unfocused: 0,
    focused: -12,
  },
  // Label scales down when floating
  scale: {
    unfocused: 1,
    focused: 0.75,
  },
  // Animation timing
  duration: 150,
  easing: 'ease-out',
}
```

### Password Field Patterns

| Element            | Specification                                                |
| ------------------ | ------------------------------------------------------------ |
| Visibility Toggle  | Eye icon, 24x24px touch target 44x44px                       |
| Toggle Position    | Right side, vertically centered                              |
| Strength Indicator | 4 bars below field, color-coded                              |
| Strength Colors    | Weak: #C13515, Fair: #E07912, Good: #008A05, Strong: #006A05 |

### Social Authentication Buttons

| Provider | Background | Text/Icon | Border      | Height |
| -------- | ---------- | --------- | ----------- | ------ |
| Google   | #ffffff    | #222222   | 1px #dddddd | 48px   |
| Apple    | #000000    | #ffffff   | none        | 48px   |
| Facebook | #1877F2    | #ffffff   | none        | 48px   |
| Email    | #ffffff    | #222222   | 1px #222222 | 48px   |

### Social Button Layout

```
┌─────────────────────────────────────┐
│  [Icon]  Continue with Google       │  ← Full-width, icon left-aligned
└─────────────────────────────────────┘
```

- Icon size: 20x20px
- Icon margin-right: 12px
- Text: 16px, 500 weight, centered
- Border-radius: 8px
- Hover: background darken 5%

### Form Validation UX

1. **Real-time validation**: Validate on blur, not on every keystroke
2. **Error messaging**: Show inline below field, not in alerts
3. **Error icon**: Red exclamation in field, right side
4. **Recovery focus**: Auto-focus first error field on submit attempt
5. **Success feedback**: Brief green checkmark, then fade to normal state

### Authentication Flow Best Practices

Based on NN/g research on login walls:

1. **Show value first**: Let users explore before requiring sign-in
2. **Defer registration**: Request account creation at point of need
3. **Guest options**: Allow guest checkout/browsing where possible
4. **Social sign-in priority**: Reduce friction with one-tap options
5. **Password recovery**: Prominent, friendly "Forgot password?" link
6. **Error tolerance**: Clear, actionable error messages

---

## Health App Adaptations for SugarPal

Adapting Airbnb's hospitality-focused DLS for diabetes management requires specific considerations.

### Trust and Safety Emphasis

| Airbnb Context           | SugarPal Adaptation          |
| ------------------------ | ---------------------------- |
| Host verification badges | Data accuracy indicators     |
| Superhost status         | Streak/consistency badges    |
| Review authenticity      | Reading reliability scores   |
| Secure messaging         | Encrypted health data        |
| Insurance/protection     | Medical disclaimer awareness |

### Accessibility for Diabetes Users

Vision impairment is common with diabetes. Enhanced accessibility requirements:

| Requirement        | Implementation                         |
| ------------------ | -------------------------------------- |
| Contrast ratio     | 7:1 minimum (exceed WCAG AAA)          |
| Touch targets      | 48x48px minimum (larger than standard) |
| Font size          | 16px minimum body, scalable to 24px    |
| Color-blind safe   | Never rely on color alone for status   |
| High-contrast mode | Full support with system setting       |
| Haptic feedback    | Confirm critical actions (insulin log) |

### Glucose-Specific Color Coding

| Status    | Primary Color | Background | Use Case             |
| --------- | ------------- | ---------- | -------------------- |
| In Range  | #22C55E       | #F0FDF4    | Target glucose       |
| Low       | #F59E0B       | #FFFBEB    | Hypoglycemia warning |
| Very Low  | #EF4444       | #FEF2F2    | Urgent hypoglycemia  |
| High      | #F97316       | #FFF7ED    | Hyperglycemia        |
| Very High | #DC2626       | #FEF2F2    | Urgent hyperglycemia |

### Health Data Visualization

| Element          | Specification                   |
| ---------------- | ------------------------------- |
| Glucose charts   | Line with gradient fill below   |
| Range bands      | Semi-transparent colored zones  |
| Time in Range    | Donut chart with percentage     |
| Trend arrows     | Animated directional indicators |
| Prediction lines | Dashed with confidence interval |

### Emotional Design for Health

Health apps require careful emotional consideration:

1. **Non-judgmental language**: "Your reading was 180" not "Your reading was too high"
2. **Celebration moments**: Recognize achievements without shaming setbacks
3. **Supportive empty states**: "Ready to log your first meal?" not "No meals logged"
4. **Calm urgency**: Alert without panic for concerning readings
5. **Privacy respect**: Always ask before sharing, default to private

### Medical Disclaimer Patterns

```
┌─────────────────────────────────────────────────┐
│ ⓘ  This app is for informational purposes      │
│     only and is not a substitute for           │
│     professional medical advice.               │
│                                                 │
│     Always consult your healthcare provider.   │
└─────────────────────────────────────────────────┘
```

- Background: #F0F9FF (soft blue)
- Border-left: 4px #0284C7
- Icon: Info circle, 20px
- Font size: 14px
- Appears on: First launch, settings, before critical actions

---

## Skeleton loading and empty states

### Shimmer effect specifications

```css
@keyframes skeleton-shimmer {
  0% {
    background-position-x: 200%;
  }
  100% {
    background-position-x: 0%;
  }
}

.skeleton {
  background: linear-gradient(
    100deg,
    #e0e0e0,
    #e0e0e0 50%,
    rgba(255, 255, 255, 0.5) 60%,
    #e0e0e0 70%
  );
  background-size: 200% 100%;
  animation: skeleton-shimmer 2s ease-out infinite;
}
```

| Property   | Value                 |
| ---------- | --------------------- |
| Duration   | 1.7-2 seconds         |
| Delay      | 200ms                 |
| Base Color | #e0e0e0               |
| Highlight  | rgba(255,255,255,0.5) |

### Empty state patterns

Empty states use DLS-consistent illustrations with positive framing ("Start by..." rather than "You don't have..."), clear next-action CTAs, and friendly, non-blaming tone. The "No exact matches" pattern provides filter adjustment suggestions with a "Remove all filters" option.

---

## Key resources and contacts

| Resource                   | URL                                |
| -------------------------- | ---------------------------------- |
| Airbnb Design Blog         | airbnb.design                      |
| Lottie Documentation       | airbnb.io/lottie                   |
| Lottie Email               | lottie@airbnb.com                  |
| react-dates (Calendar)     | github.com/react-dates/react-dates |
| Tyrus Illustration Toolkit | tyrus.design                       |
| Accessibility Contact      | digital-accessibility@airbnb.com   |

This comprehensive reference reflects Airbnb's design system as of December 2025, incorporating official documentation, engineering blog posts, designer articles, the 2025 redesign announcements, and SugarPal-specific health app adaptations. Internal design tokens and some exact pixel specifications remain proprietary, with values derived from official sources and community analysis where noted.
