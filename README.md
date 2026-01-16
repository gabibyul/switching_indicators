# Switching Indicators (Flutter)

Beautiful, minimal **4-channel status panel** built with Flutter.  
Each indicator toggles between **red (OFF)** and **green (ON)** and is rendered as crisp **SVG** icons — perfect for dashboards, device/connection monitors, demo kiosks, and UI prototypes.

<p align="center">
  <img alt="Switching Indicators preview" src="assets/preview.png" width="820" />
</p>

<p align="center">
  <a href="#"><img alt="Flutter" src="https://img.shields.io/badge/Flutter-UI-blue?logo=flutter&logoColor=white"></a>
  <a href="#"><img alt="BLoC" src="https://img.shields.io/badge/State%20Management-BLoC-7B61FF"></a>
  <a href="#"><img alt="Freezed" src="https://img.shields.io/badge/Immutable%20State-Freezed-00C853"></a>
  <a href="#"><img alt="SVG" src="https://img.shields.io/badge/Icons-SVG-orange"></a>
</p>

---

## ✨ What you get

- **4 indicators** in one row (fixed, predictable layout)
- **Two states per indicator**
  - 🟥 Red = *inactive / disconnected / OFF*
  - 🟩 Green = *active / connected / ON*
- **Clean state management** with `flutter_bloc`
- **Immutable state** with `freezed`
- **Sharp SVG rendering** via `flutter_svg`
- Great base for adding realtime updates (WebSocket/MQTT/BLE/REST)

---

## 🧠 How it works

The UI listens to a `ConnectionCubit` and renders a list of 4 booleans:

- `false` → `assets/{index}_red_button.svg`
- `true`  → `assets/{index}_green_button.svg`

So each indicator is simply driven by `statuses[index]`.

---

## 🚀 Getting started

### 1) Install dependencies

```bash
flutter pub get
