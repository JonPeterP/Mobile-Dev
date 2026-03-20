# Mobile Application Development — Key Considerations & Industry Practices

## Two Versions

| File | Style | Version |
|------|-------|----------|
| `slides.md` (default) | Analogies | General audience |
| `slides-detailed.md` | Comprehensive | Technical self-study handout |

To switch versions, rename the file you want to `slides.md` (Slidev's default entry).

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

## License

Internal training material.
