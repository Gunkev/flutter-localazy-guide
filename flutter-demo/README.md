# Maboutik Flutter Starter

This is the starting point for the Flutter and Localazy guide.

Clone it first if you want to follow the article step by step. It is a small English-only shopping screen with a name prompt, a product card, a quantity stepper, and a language selector that only shows English for now.

The point is to begin with a normal Flutter app, then move the UI strings into ARB files, generate Flutter localizations, upload the source strings to Localazy, and bring reviewed translations back into the project.

## Run It

```powershell
git clone https://github.com/Gunkev/flutter-localazy-guide.git
cd flutter-localazy-guide/flutter-demo
flutter pub get
flutter run
```

## Quick Check

Try these before starting the localization work:

- Wait for the loading screen to finish
- Enter your name and confirm the greeting updates
- Increase and decrease the cart quantity
- Check that the cart message changes for zero, one, and multiple items
- Open the language selector and confirm that English is the only option

The selector becomes a real locale switcher later, after the translated ARB files come back from Localazy.

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

## Not Added Yet

You will add these while following the guide:

- `lib/l10n/app_en.arb`
- `l10n.yaml`
- `flutter_localizations`
- generated `AppLocalizations` files
- `localazy.json`
- French, German, and Spanish ARB files

## Verify The Starter

Run:

```powershell
flutter analyze
flutter test
```

If both pass, you are ready to start the localization workflow.