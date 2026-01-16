# CLAUDE.md - Pass Theme for Discourse

> Context file for AI assistants working on the InterviewCoder Discourse theme.

---

## Project Overview

**Project**: InterviewCoder Community Forum Theme  
**Platform**: Discourse (hosted)  
**Repository**: https://github.com/InterviewCoderCo/pass-theme  
**Design Reference**: Airbnb Design Language System (2025)  
**Design Doc**: See `AirbnbDesignLanguage.md` for complete DLS reference

---

## Tech Stack

| Layer          | Technology                    |
| -------------- | ----------------------------- |
| **CSS**        | SCSS (Discourse theme format) |
| **JavaScript** | Ember.js / Glimmer components |
| **Framework**  | Discourse Theme API           |

---

## Directory Structure

```
pass-theme/
├── about.json              # Theme metadata, color schemes, assets
├── AirbnbDesignLanguage.md # Complete Airbnb DLS reference
├── assets/
│   └── ic_logo.svg         # Golden wing logo for promo card
├── common/
│   ├── common.scss         # Main entry point (imports only)
│   ├── color_definitions.scss  # Color variable overrides
│   └── head_tag.html       # Google Fonts (Inter) import
├── scss/                   # Modular SCSS files
│   ├── badges.scss         # Category badges, tags, notifications
│   ├── buttons.scss        # Button styling
│   ├── categories-view.scss # Category page styles
│   ├── chat.scss           # Chat feature styles
│   ├── color-choice.scss   # Color picker styles
│   ├── composer.scss       # Post composer styles
│   ├── forms.scss          # Input fields, textareas, selects
│   ├── global.scss         # Typography, backgrounds, layout
│   ├── header.scss         # Header navigation
│   ├── login.scss          # Login/signup modals
│   ├── main.scss           # Main layout styles
│   ├── modals.scss         # Modal dialogs
│   ├── nav-pills.scss      # Navigation tabs
│   ├── promo-sidebar.scss  # Promotional sidebar card
│   ├── sidebar.scss        # Sidebar navigation
│   ├── sidebar-new-topic-button.scss # New topic CTA
│   ├── topic.scss          # Topic detail page
│   ├── topic-cards.scss    # Topic list styling
│   ├── user-messages.scss  # Messages inbox
│   ├── user-profile.scss   # User profile pages
│   ├── variables.scss      # CSS custom properties
│   ├── welcome-banner.scss # Homepage banner
│   └── lib/
│       └── viewport.scss   # Viewport mixins
├── javascripts/
│   └── discourse/
│       ├── api-initializers/
│       │   ├── promo-sidebar-card.js
│       │   └── [other initializers...]
│       └── components/
│           └── promo-sidebar-card.gjs
├── desktop/                # Desktop-only styles
├── mobile/                 # Mobile-only styles
├── locales/               # Translation files
└── settings.yml           # Theme settings
```

---

## Design System: Airbnb DLS 2025

### Core Philosophy

> "Flat design is over" — Brian Chesky, 2024

The theme follows Airbnb's 2025 design direction:

1. **Dimensional surfaces** - Subtle shadows and blur for depth hierarchy
2. **Soft corners** - 10-12px border-radius for warmth
3. **Spring animations** - Natural physics-based motion
4. **Clean typography** - Inter font, 14-16px body, tight letter-spacing
5. **Inverted active states** - Dark background for selected items

### Color Palette

| Variable                  | Light     | Dark      | Usage              |
| ------------------------- | --------- | --------- | ------------------ |
| `--sidebar-bg`            | #FAFAFA   | #111111   | Sidebar background |
| `--sidebar-border`        | #EBEBEB   | #222222   | Subtle borders     |
| `--sidebar-hover-bg`      | #F0F0F0   | #1A1A1A   | Hover states       |
| `--sidebar-active-bg`     | #222222   | #FFFFFF   | Active/selected    |
| `--sidebar-active-text`   | #FFFFFF   | #222222   | Active text        |
| `--sidebar-text-primary`  | #222222   | #FFFFFF   | Primary text       |
| `--sidebar-text-secondary`| #717171   | #A0A0A0   | Secondary text     |
| `--sidebar-text-muted`    | #B0B0B0   | #666666   | Muted/labels       |

### Brand Colors (from DLS)

| Color         | Hex       | Usage                      |
| ------------- | --------- | -------------------------- |
| Primary Blue  | #2563EB   | CTAs, links, focus states  |
| Gradient Start| #3B82F6   | Button gradients           |
| Gradient End  | #1D4ED8   | Button gradients           |
| Gold/Yellow   | #FBBF24   | Promo highlights           |
| Success       | #22C55E   | Confirmations              |
| Error         | #EF4444   | Validation errors          |

### Typography

- **Font**: Inter (Google Fonts)
- **Weights**: 400 (body), 500 (medium), 600 (semibold), 700 (bold)
- **Body size**: 14px
- **Line height**: 1.5
- **Letter spacing**: -0.01em (body), -0.02em (headings)

### Spacing Scale

`4px, 8px, 12px, 16px, 20px, 24px, 32px, 48px`

### Border Radius

| Element        | Radius |
| -------------- | ------ |
| Buttons        | 12px   |
| Cards          | 12px   |
| Inputs         | 8px    |
| Sidebar links  | 10px   |
| Badges/pills   | 10px   |
| Modals         | 16px   |

### Shadows

```scss
// Subtle card shadow
box-shadow: 
  0 2px 4px rgba(0, 0, 0, 0.08),
  0 4px 12px rgba(0, 0, 0, 0.04);

// Elevated/hover shadow
box-shadow: 
  0 4px 8px rgba(0, 0, 0, 0.12),
  0 8px 24px rgba(0, 0, 0, 0.08);

// Blue glow for CTAs
box-shadow: 
  0 4px 12px rgba(37, 99, 235, 0.25);
```

### Animation Timing

```scss
// Standard transition
--transition: 200ms cubic-bezier(0.4, 0, 0.2, 1);

// Hover transition (faster)
--hover-transition: 150ms ease-out;

// Spring animation (for transforms)
cubic-bezier(0.34, 1.56, 0.64, 1)
```

---

## CSS Patterns

### Light/Dark Mode

Use the `light-dark()` CSS function:

```scss
background: light-dark(#FAFAFA, #111111);
color: light-dark(#222222, #FFFFFF);
border-color: light-dark(#EBEBEB, #222222);
```

### Hover Lift Effect

```scss
&:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.12), 0 8px 24px rgba(0, 0, 0, 0.08);
}
```

### Active State (Inverted)

```scss
&.active {
  background: light-dark(#222222, #FFFFFF);
  color: light-dark(#FFFFFF, #222222);
}
```

### Gradient Button

```scss
background: linear-gradient(135deg, #3B82F6 0%, #1D4ED8 100%);
color: #FFFFFF;
box-shadow: 0 2px 4px rgba(0, 0, 0, 0.08), 0 4px 12px rgba(37, 99, 235, 0.2);

&:hover {
  transform: translateY(-1px);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.12), 0 8px 24px rgba(37, 99, 235, 0.3);
}
```

---

## Completed Features (2025 Redesign)

### ✅ Sidebar (scss/sidebar.scss)

- Clean background with subtle border
- Section headers: 11px uppercase, muted color
- Navigation links: 14px, 10px border-radius
- Hover: background shift + translateX(2px)
- Active: inverted colors (dark bg, white text)
- Count badges: pill-shaped with subtle background
- Scrollbar: thin, styled thumb

### ✅ New Topic Button (scss/sidebar-new-topic-button.scss)

- Gradient CTA: #3B82F6 → #1D4ED8
- 12px border-radius
- Multi-layer shadow with blue glow
- Hover: translateY(-2px) lift effect
- Focus: 3px blue outline ring

### 🔄 In Progress

- Header redesign
- Topic list/cards redesign
- Buttons & forms redesign
- Modals & dialogs redesign

---

## Key Files

### common/common.scss

Main entry point - **imports only**, no inline styles:

```scss
@import "variables";
@import "global";
@import "sidebar";
// ... all other imports
```

### scss/sidebar.scss

Sidebar navigation with 2025 Airbnb styling.

### scss/global.scss

Core typography, backgrounds, and layout alignment.

### scss/buttons.scss

Button variants (primary, secondary, flat, danger).

### scss/forms.scss

Input fields, textareas, select dropdowns, checkboxes.

---

## Development Workflow

### Discourse Theme CLI (Recommended)

```bash
# Install
gem install discourse_theme

# Watch for changes (auto-upload on save)
discourse_theme watch .

# Upload once
discourse_theme upload .
```

**Credentials** in `~/.discourse_theme`:
- Forum URL: https://pass.discourse.group
- Theme ID: 2

### Git Workflow

```bash
git add .
git commit -m "feat: redesign sidebar with Airbnb DLS 2025"
git push
```

Then: Discourse Admin → Themes → "Check for updates"

---

## Discourse Theme API

### Render in Outlet

```javascript
import { apiInitializer } from "discourse/lib/api";
import MyComponent from "../components/my-component";

export default apiInitializer((api) => {
  api.renderInOutlet("outlet-name", MyComponent);
});
```

### Common Outlets

| Outlet                    | Location              |
| ------------------------- | --------------------- |
| `above-main-container`    | Above main content    |
| `before-sidebar-sections` | Top of sidebar        |
| `after-sidebar-sections`  | Bottom of sidebar     |

---

## Page-Specific Selectors

| Body Class                   | Page                  |
| ---------------------------- | --------------------- |
| `body.archetype-regular`     | Topic detail          |
| `body.navigation-categories` | Categories listing    |
| `body.navigation-topics`     | Topic list            |
| `body.user-page`             | User profiles         |
| `body.user-messages-page`    | Messages inbox        |

---

## Resources

- [Airbnb Design Language](AirbnbDesignLanguage.md) - Complete DLS reference
- [Discourse Theme Guide](https://meta.discourse.org/t/beginners-guide-to-developing-discourse-themes/93648)
- [Discourse Plugin Outlets](https://meta.discourse.org/t/using-plugin-outlet-connectors-from-a-theme-or-plugin/32727)

---

_Last updated: January 15, 2026_
