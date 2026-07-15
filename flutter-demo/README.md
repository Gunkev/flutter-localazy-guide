# Flutter Starter

This starter Flutter app for the Localazy localization guide. Clone
this version first if you want to follow the article step by step.

This app is not connected to Flutter localization or Localazy yet. It starts as
a regular English-only Flutter app so you can see exactly what changes when the
guide moves the UI strings into ARB files and connects them to Localazy.

## Clone And Run The App

```powershell
git clone <starter-repo-url>
cd flutter-demo
flutter pub get
flutter run
```

When the app opens, enter your name in the prompt. You should see a product
card, a quantity stepper, and an English language selector.

## What To Test

- The app shows a short loading screen.
- The name prompt appears after loading.
- The greeting uses the name you entered.
- The product card shows the wireless keyboard image.
- The plus and minus buttons update the cart quantity.
- The cart message changes between zero, one, and multiple items.

The language selector is present in the UI, but at this stage it only shows
English. The article later turns it into a real locale selector after the app
has downloaded translated ARB files from Localazy.

## Project Structure

```text
lib/
  main.dart
  src/
    app/
      maboutik_app.dart
    features/
      shop/
        maboutik_home_page.dart
        widgets/
          language_selector.dart
          name_prompt_dialog.dart
          product_card.dart
          quantity_stepper.dart
    theme/
      app_colors.dart
      app_theme.dart
    utils/
      app_spacing.dart
      app_strings.dart
assets/
  wireless-keyboard-2.jpg
```

The visible English copy starts in `lib/src/utils/app_strings.dart`. During the
guide, those strings move into `lib/l10n/app_en.arb`, then Flutter generates the
`AppLocalizations` API from that ARB file.

## What This Starter Does Not Include Yet

- No `lib/l10n/app_en.arb`
- No `l10n.yaml`
- No `flutter_localizations` dependency
- No generated `AppLocalizations` files
- No `localazy.json`
- No French, German, or Spanish ARB files

Those pieces are added in the guide so you can follow the full workflow without
skipping the important setup steps.

## Check The Project

Run these before starting the localization work:

```powershell
flutter analyze
flutter test
```

If both pass, the starter app is ready for the guide.
