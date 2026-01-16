# Switching Indicators (Flutter)

Minimal **4-channel indicator panel** built with Flutter.  
Each indicator switches between **🟥 OFF** and **🟩 ON** and is rendered with crisp **SVG** icons — perfect for status dashboards and UI prototypes.

<p align="center">
  
</p>

<p align="center">
  <a href="#"><img alt="Flutter" src="https://img.shields.io/badge/Flutter-UI-blue?logo=flutter&logoColor=white"></a>
  <a href="#"><img alt="BLoC" src="https://img.shields.io/badge/State%20Management-BLoC-7B61FF"></a>
  <a href="#"><img alt="Freezed" src="https://img.shields.io/badge/Immutable%20State-Freezed-00C853"></a>
  <a href="#"><img alt="SVG" src="https://img.shields.io/badge/Icons-SVG-orange"></a>
</p>

---

## 🧩 What you get

- **4 indicators** in a single row (fixed layout)
- **Two states per indicator**
  - 🟥 Red = OFF
  - 🟩 Green = ON
- State management with `flutter_bloc`
- Immutable state with `freezed`
- SVG rendering via `flutter_svg`

---

## 🛠️ How it works

UI listens to `ConnectionCubit` and renders a `List<bool>` with 4 values:

- `false` → `assets/{index}_red_button.svg`
- `true`  → `assets/{index}_green_button.svg`

Each icon is driven by `statuses[index]`.

---

## ▶️ Getting started

```bash
flutter pub get
flutter run
