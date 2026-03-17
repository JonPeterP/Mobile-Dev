# Mobile Application Development — Key Considerations & Industry Practices

## Tech Stack

- **Slidev** – Markdown-based presentation framework (Vue.js + Vite)
- **Tailwind CSS** – Utility-first styling via Slidev's default theme
- **Mermaid** – Diagrams rendered in slides
- **pnpm** – Package manager

## Setup

### Prerequisites

- [Node.js](https://nodejs.org/) >= 18
- [pnpm](https://pnpm.io/) >= 9

```bash
# Install pnpm if you don't have it
npm install -g pnpm
```

### Install & Run

```bash
# 1. Install dependencies
pnpm install

# 2. Start the development server (opens in browser)
pnpm dev

# 3. Build for production (outputs to dist/)
pnpm build

# 4. Export as PDF
pnpm export
```

### Presenter Mode

Once running, press the **presenter** icon in the bottom-left toolbar or navigate to `http://localhost:3030/presenter` to get speaker notes and a timer.

### Navigation

| Key | Action |
|-----|--------|
| `→` / `Space` | Next slide / next animation |
| `←` | Previous slide |
| `o` | Slide overview |
| `d` | Toggle dark mode |
| `f` | Fullscreen |

## Project Structure

```
Mobile-Dev-talk/
├── package.json          # Dependencies and scripts
├── slides.md             # All presentation slides (main file)
├── styles/
│   ├── index.ts          # Style entry point
│   └── base.css          # Custom theme (colors, components)
├── cookbook/              # Hands-on Flutter exercise files
│   ├── README.md         # Cookbook setup guide
│   ├── counter_event.dart
│   ├── counter_state.dart
│   ├── counter_bloc.dart
│   ├── counter_screen.dart
│   ├── main.dart
│   └── counter_bloc_test.dart
└── README.md             # This file
```

## Presentation Flow (~60 minutes)

### Part 1: The Mobile Landscape (10 min)

| Slide | Topic | Duration | Notes |
|-------|-------|----------|-------|
| 1 | Title & Introduction | 1 min | Welcome, set the tone |
| 2 | Agenda | 2 min | Overview of the session |
| 3 | Learning Goals | 1 min | Emerging tech, practical apps, careers |
| 4 | Mobile Landscape 2026 | 3 min | Market stats, trends (AI/ML, AR, 5G) |
| 5 | Two Dominant Ecosystems | 3 min | iOS vs Android overview |

### Part 2: Native & Cross-Platform Deep Dive (12 min)

| Slide | Topic | Duration | Notes |
|-------|-------|----------|-------|
| 6 | Native iOS Development | 4 min | Swift, SwiftUI, code example from iosdemo training |
| 7 | Native Android Development | 4 min | Kotlin, Compose, code example from Android CadetTraining |
| 8 | Cross-Platform with Flutter | 3 min | Dart, BLoC, code from CadetBank training |
| 9 | Decision Matrix | 2 min | When to use native vs cross-platform |
| 10 | Other Cross-Platform Options | 2 min | React Native, KMP, MAUI |

### Part 3: Key Considerations (18 min)

| Slide | Topic | Duration | Notes |
|-------|-------|----------|-------|
| 11 | Section Divider | — | Transition slide |
| 12 | Architecture Patterns | 3 min | Why architecture matters + clean arch diagram |
| 13 | MVVM / MVP / BLoC | 4 min | Side-by-side comparison with training examples |
| 14 | UI/UX Considerations | 3 min | Platform guidelines, accessibility, performance UX |
| 15 | State Management | 3 min | iOS, Android, Flutter state tools |
| 16 | Networking & APIs | 3 min | REST, GraphQL, libraries per platform |
| 17 | Testing Strategies | 3 min | Testing pyramid, tools by platform |
| 18 | Security Best Practices | 3 min | Data protection, auth, compliance |

### Part 4: Industry Practices (8 min)

| Slide | Topic | Duration | Notes |
|-------|-------|----------|-------|
| 19 | Section Divider | — | Transition slide |
| 20 | CI/CD for Mobile | 3 min | Pipeline diagram, Fastlane, GitLab CI reference |
| 21 | App Store & Deployment | 3 min | Release process timeline, phased rollouts |
| 22 | Monitoring & Performance | 2 min | Key metrics, monitoring tools, SRE mindset |

### Part 5: Hands-On Cookbook (10 min)

| Slide | Topic | Duration | Notes |
|-------|-------|----------|-------|
| 23 | Section Divider | — | Transition slide |
| 24 | Cookbook Overview | 2 min | What we'll build, prerequisites, project structure |
| 25 | Step 1: Events & States | 2 min | Walk through event and state definitions |
| 26 | Step 2: Build the BLoC | 2 min | Event-to-state mapping logic |
| 27 | Step 3: Create the UI | 2 min | BlocBuilder, dispatching events |
| 28 | Step 4: Wire Up & Test | 2 min | BlocProvider, bloc_test, audience challenge |
| 29 | Dependencies (pubspec) | — | Quick reference slide |

> **Tip:** If the audience has laptops, invite them to follow along using the files in `cookbook/`. Otherwise, walk through the code on screen and save the cookbook for post-seminar self-study.

### Part 6: Career Insights & Closing (7 min)

| Slide | Topic | Duration | Notes |
|-------|-------|----------|-------|
| 30 | Section Divider | — | Transition slide |
| 31 | Developer Roadmap | 2 min | Foundation → Advanced skills timeline |
| 32 | Career Paths | 2 min | Developer → Tech Lead → Architect |
| 33 | Key Takeaways | 2 min | 6 principles to remember |
| 34 | Resources | 1 min | Links, conferences, communities |
| 35 | Thank You & Q&A | 5 min | Open discussion |

**Total: ~60 minutes** (including ~5 min Q&A buffer)

## Cookbook (Hands-On Activity)

The `cookbook/` directory contains a complete Flutter + BLoC exercise:

1. **`counter_event.dart`** — Event definitions (user actions)
2. **`counter_state.dart`** — Immutable state class
3. **`counter_bloc.dart`** — Business logic mapping events → states
4. **`counter_screen.dart`** — UI that reads state and dispatches events
5. **`main.dart`** — App entry point with BlocProvider
6. **`counter_bloc_test.dart`** — Unit tests using bloc_test

Each file includes commented challenges for attendees to extend the app:
- Add a multiply button
- Track operation history
- Persist state with SharedPreferences

See [`cookbook/README.md`](cookbook/README.md) for the full setup guide.

## Customization

### Changing the Theme Colors

Edit `styles/base.css`:

```css
:root {
  --slidev-theme-primary: #6C5CE7;   /* Purple - headings, accents */
  --slidev-theme-secondary: #1B1464; /* Dark blue - backgrounds */
  --slidev-theme-accent: #00D2D3;    /* Teal - highlights */
}
```

### Adding Slides

Add new slides to `slides.md` separated by `---`. Use Slidev features:

- `v-click` for step-by-step reveals
- Mermaid code blocks for diagrams
- Tailwind classes for layout (`grid`, `flex`, `gap-*`)
- Speaker notes in `<!-- comments -->`

## References

This presentation draws from real training projects:

| Project | Platform | Concepts Used |
|---------|----------|---------------|
| iosdemo (Tidy/Unkempt) | iOS | MVVM, Combine, SwiftUI, Testing |
| android-cadet-training | Android | MVP, Activities, Fragments, Retrofit |
| cadetbank | Flutter | BLoC, GetIt DI, Freezed, Navigation |
| swift-basics | iOS | Swift fundamentals |
| KotlinBasics | Kotlin | Kotlin language features |
| gitlab-cicd-pipelines | DevOps | CI/CD pipeline concepts |
| OpenAPI spec | API Design | Contract-first development |

## License

Internal training material.
