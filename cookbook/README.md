# Mobile Dev Cookbook: Flutter Counter App with BLoC

A hands-on exercise to learn the BLoC (Business Logic Component) pattern in Flutter.

## What You'll Learn

- The BLoC pattern: Events in, States out
- Clean separation of UI and business logic
- Immutable state management
- Unit testing a BLoC with `bloc_test`

## Prerequisites

- Flutter SDK installed ([Install Guide](https://docs.flutter.dev/get-started/install))
- A code editor (VS Code with Flutter extension recommended)
- Basic Dart knowledge

## Quick Start

```bash
# Verify Flutter is installed
flutter doctor

# Create the project
flutter create bloc_counter_app
cd bloc_counter_app

# Add dependencies
flutter pub add flutter_bloc
flutter pub add --dev bloc_test

# Create the folder structure
mkdir -p lib/bloc lib/screens test/bloc
```

## Step-by-Step Guide

Follow the files in this cookbook directory in order:

1. **`counter_event.dart`** → Define what actions users can take
2. **`counter_state.dart`** → Define the data your UI needs
3. **`counter_bloc.dart`** → Map events to state changes
4. **`counter_screen.dart`** → Build the UI that reads state and sends events
5. **`main.dart`** → Wire everything together
6. **`counter_bloc_test.dart`** → Test the BLoC without any UI

## Running

```bash
flutter run          # Launch the app
flutter test         # Run the tests
```

## Challenges

Once the base app works, try these extensions:

1. **Multiply Button** — Add a `MultiplyPressed` event that doubles the count
2. **History** — Store a list of operations in state and display them
3. **Persistence** — Save/restore count with `shared_preferences` package
4. **Theming** — Add a dark/light mode toggle using BLoC
