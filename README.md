# AstroScope

AstroScope is a Flutter-based educational app about the solar system. It helps users explore the planets, learn interesting facts, and save their favorite worlds in a simple and engaging experience.

## Project Description

This application presents a clean, interactive interface for browsing planetary information. Users can:

- explore each planet through dedicated screens
- view key facts and summary information
- discover the Planet of the Day feature
- mark planets as favorites for quick access
- navigate between home, favorites, and planet-specific content

The project combines a modern Flutter UI with state management using BLoC to provide a responsive and organized user experience.

## Key Features

- Solar system overview and planet exploration
- Individual screens for Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, and Neptune
- Favorite planets tracking using Cubit state management
- Stylish app layout with custom navigation and app bar components
- Splash screen and onboarding-style intro experience
- Cross-platform Flutter support for mobile and web

## Tech Stack

- Flutter
- Dart
- flutter_bloc
- Material Design widgets

## Project Structure

- `lib/main.dart` — app entry point
- `lib/screens/` — app screens and views
- `lib/state/` — app state logic, including favorites management
- `lib/widgets/` — reusable UI components
- `assets/images/` — project assets

## Getting Started

### Prerequisites

Make sure you have Flutter installed and configured on your machine.

- Flutter SDK
- Android Studio / VS Code with Flutter extensions
- Emulator or physical device

### Run the app

```bash
flutter pub get
flutter run
```

### Useful commands

```bash
flutter analyze
flutter test
flutter build apk
```

## Purpose

AstroScope is designed as a fun and educational app for anyone curious about space, astronomy, and the planets in our solar system. It is a good example of a polished Flutter app with navigation, state management, and reusable components.
