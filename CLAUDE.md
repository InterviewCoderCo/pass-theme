# CLAUDE.md - Pass Theme for Discourse

> Context file for AI assistants working on the InterviewCoder Discourse theme.

---

## Project Overview

**Project**: InterviewCoder Community Forum Theme
**Platform**: Discourse (hosted)
**Repository**: https://github.com/InterviewCoderCo/pass-theme
**Design Reference**: Figma designs provided by user

---

## Tech Stack

| Layer | Technology |
|-------|------------|
| **CSS** | SCSS (Discourse theme format) |
| **JavaScript** | Ember.js / Glimmer components |
| **Framework** | Discourse Theme API |

---

## Directory Structure

```
pass-theme/
├── about.json              # Theme metadata, color schemes, assets
├── assets/
│   └── ic_logo.svg         # Golden wing logo for promo card
├── common/
│   ├── common.scss         # Main stylesheet (all styles)
│   ├── color_definitions.scss  # Color variable overrides
│   └── head_tag.html       # Google Fonts (Inter) import
├── javascripts/
│   └── discourse/
│       ├── api-initializers/
│       │   ├── promo-sidebar-card.js    # Promo card initializer
│       │   ├── full-width-logo-behavior.js
│       │   ├── reposition-bulk-select.js
│       │   └── [other initializers...]
│       └── components/
│           └── promo-sidebar-card.gjs   # Promo card Glimmer component
├── desktop/                # Desktop-only styles (if needed)
├── mobile/                 # Mobile-only styles (if needed)
├── locales/               # Translation files
└── settings.yml           # Theme settings
```

---

## Design System

### Airbnb DLS Principles

The theme follows Airbnb Design Language System principles:

1. **No borders on cards** - Use multi-layer shadows for elevation
2. **Multi-layer shadows** - Combine 2-3 shadow layers for depth
3. **Smooth transitions** - 300ms ease for cards, 150ms for simple hovers
4. **Subtle hover states** - Enhanced shadows, slight lift
5. **Clean backgrounds** - White/dark surfaces, no gradients on cards

### Color Palette (Tailwind Slate)

| Shade | Hex | Usage |
|-------|-----|-------|
| 50 | #F8FAFC | Light backgrounds |
| 100 | #F1F5F9 | Hover states |
| 200 | #E2E8F0 | Borders (light) |
| 400 | #94A3B8 | Muted text |
| 500 | #64748B | Secondary text |
| 600 | #475569 | Body text |
| 700 | #334155 | Borders (dark) |
| 800 | #1E293B | Dark backgrounds |
| 900 | #0F172A | Primary text, dark mode bg |

### Brand Colors

| Color | Hex | Usage |
|-------|-----|-------|
| Primary Blue | #2563EB | Buttons, links, accents |
| Gold/Yellow | #FBBF24 | CTA buttons, highlights |
| Page Background | #E9F0F7 | Light gray-blue |

### Typography

- **Font**: Inter (Google Fonts)
- **Weights**: 400, 500, 600, 700

---

## Completed Features

### 1. Page Background
- Light gray-blue background (#E9F0F7)
- Applied to html and body

### 2. Topic List / Discovery Pages
- Topic cards with white background, rounded corners, shadows
- Nav pills styling (Latest, Hot, Categories tabs)
- List controls (Categories, Tags dropdowns)
- Filter buttons with consistent styling

### 3. Promo Sidebar Card
- Fixed position on right side (only on screens > 1400px)
- Dark card with golden accents
- Features: Undetectable Assistant, Real-time answers
- Golden CTA button "Get Lifetime package"
- Uses ic_logo.svg asset
- Renders via Glimmer component in `above-main-container` outlet
- Only shows on discovery/tag pages

### 4. Header & Sidebar
- Clean header styling
- Sidebar navigation styling

---

## Work In Progress

### Topic Detail Page
- Need to style to match Figma design
- Requirements:
  - Left-aligned content
  - White card background for post area
  - User avatar with level badge (LVL 6) - needs plugin
  - Stats row (comments, likes, views)
  - Action buttons (Share, Bookmark, Flag, Reply)
  - "New & Unread Topics" table section

---

## Key Files

### common/common.scss
Main stylesheet containing all theme styles. Organized into sections:
- Typography
- Page background
- Topic list cards
- Nav pills
- List controls
- Promo sidebar card
- (Topic page styles - to be added)

### javascripts/discourse/components/promo-sidebar-card.gjs
Glimmer component for the promotional card. Uses:
- `@service router` to check current route
- Only renders on discovery/tag routes
- Template with card HTML structure

### javascripts/discourse/api-initializers/promo-sidebar-card.js
Initializer that renders the promo card component:
```javascript
api.renderInOutlet("above-main-container", PromoSidebarCard);
```

### about.json
Theme metadata including:
- Color schemes (Light and Dark)
- Asset registration (promo_logo)
- SVG icons (fire)
- Theme settings

---

## CSS Patterns

### Light/Dark Mode
Use the `light-dark()` CSS function:
```scss
background: light-dark(#FFFFFF, #1E293B);
color: light-dark(#0F172A, #F8FAFC);
```

### Card Shadow (Airbnb DLS)
```scss
box-shadow:
  0 1px 2px rgba(0, 0, 0, 0.04),
  0 4px 16px rgba(0, 0, 0, 0.06),
  0 8px 24px rgba(0, 0, 0, 0.03);
```

### Hover Lift Effect
```scss
&:hover {
  box-shadow:
    0 2px 4px rgba(0, 0, 0, 0.04),
    0 8px 24px rgba(0, 0, 0, 0.1);
  transform: translateY(-2px);
}
```

---

## Development Workflow

### Local Development
Theme is installed in Discourse via Git repository. After pushing changes:
1. Go to Discourse Admin → Themes → InterviewCoder
2. Click "Check for updates"
3. Refresh the page

### Pushing Changes
```bash
cd ~/Desktop/pass-theme
git add .
git commit -m "Description of changes"
git push
```

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
- `above-main-container` - Above main content
- `before-sidebar-sections` - Top of sidebar
- `after-sidebar-sections` - Bottom of sidebar

### Glimmer Component Template
```javascript
import Component from "@glimmer/component";
import { service } from "@ember/service";

export default class MyComponent extends Component {
  @service router;

  get shouldRender() {
    return this.router.currentRouteName?.startsWith("discovery");
  }

  <template>
    {{#if this.shouldRender}}
      <div class="my-component">...</div>
    {{/if}}
  </template>
}
```

---

## Page-Specific CSS Selectors

| Body Class | Page |
|------------|------|
| `body.archetype-regular` | Topic detail page |
| `body.navigation-categories` | Categories listing |
| `body.navigation-topics` | Topic list (Latest, etc.) |
| `body.user-page` | User profiles |
| `body.tags-page` | Tags listing |

---

## Resources

- [Discourse Theme Developer Guide](https://meta.discourse.org/t/beginners-guide-to-developing-discourse-themes/93648)
- [Discourse Plugin Outlets](https://meta.discourse.org/t/using-plugin-outlet-connectors-from-a-theme-or-plugin/32727)
- [Discourse Theme Structure](https://meta.discourse.org/t/structure-of-themes-and-theme-components/60848)

---

*Last updated: January 14, 2025*
