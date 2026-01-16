# switching_indicators

A small Flutter demo that renders **four status indicators** (SVG icons) and updates them based on state managed with **flutter_bloc (Cubit)** and **Freezed**.

The UI shows a horizontal row of 4 buttons/indicators. Each indicator switches between a **green** and **red** SVG asset depending on a boolean value in the state.

## Features

- Flutter UI with a centered status panel
- State management via `Cubit` (`flutter_bloc`)
- Immutable union state via `Freezed`
- SVG rendering via `flutter_svg`
- Status mapping: `true` → green icon, `false` → red icon

## Project structure

- `lib/main.dart` — app entry point, `BlocProvider`, and `StatusScreen`
- `lib/widgets/status_buttons.dart` — renders 4 SVG indicators based on Cubit state
- `lib/cubit/connection_cubit.dart` — Cubit class
- `lib/cubit/connection_state.dart` — Freezed state (`initial` and `changes`)

## Assets

Indicators are loaded from:

- `assets/1_green_button.svg` / `assets/1_red_button.svg`
- `assets/2_green_button.svg` / `assets/2_red_button.svg`
- `assets/3_green_button.svg` / `assets/3_red_button.svg`
- `assets/4_green_button.svg` / `assets/4_red_button.svg`

Make sure the `assets/` folder is declared in `pubspec.yaml`.

## Getting started

1. Install dependencies:
   ```bash
   flutter pub get
