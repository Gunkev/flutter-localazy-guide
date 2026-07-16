# Maboutik Flutter + Localazy Demo

This is the completed version of the Flutter and Localazy guide.

It already includes English, French, German, and Spanish ARB files, so you can clone it, run it, and test the finished localization flow right away.

You only need to connect your own Localazy project if you want to manage the strings yourself: upload source ARB changes, review translations in Localazy, or download updated translations back into Flutter.

## Run It

```powershell
git clone https://github.com/Gunkev/flutter-localazy-guide.git
cd flutter-localazy-guide/flutter-localazy-demo
flutter pub get
flutter gen-l10n
flutter run
```

## Quick Check

Try these after the app starts:

- Wait for the loading screen to finish
- Enter your name and confirm the greeting updates
- Increase and decrease the cart quantity
- Check that the cart message changes for zero, one, and multiple items
- Switch between English, French, German, and Spanish
- Confirm the UI updates without restarting the app

## Project Structure

```text
lib/
  main.dart
  l10n/
    app_en.arb
    app_fr.arb
    app_de.arb
    app_es.arb
    app_localizations.dart
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
assets/
  wireless-keyboard-2.jpg
```

The English source file is `lib/l10n/app_en.arb`. The translated ARB files are `app_fr.arb`, `app_de.arb`, and `app_es.arb`.

## Localazy Setup

You do not need a Localazy account just to run the demo.

Create one only when you want to manage the translations from your own Localazy project. That is useful if you want to upload new source strings, test review workflows, or download updated translations.

To connect the app to your own Localazy project:

1. Sign in from the [Localazy dashboard](https://localazy.com/dashboard).
2. Create a new project.
3. Choose the Flutter integration.
4. Copy your project `readKey` and `writeKey`.
5. Replace the placeholder keys in `localazy.json`.

The config should point to the Flutter ARB files:

```json
{
  "writeKey": "your-write-key",
  "readKey": "your-read-key",
  "upload": {
    "type": "arb",
    "files": "lib/l10n/app_en.arb"
  },
  "download": {
    "files": "lib/l10n/app_${lang}.arb"
  }
}
```

Before uploading, regenerate Flutter localizations once. It catches broken ARB or ICU syntax before the source strings leave your project:

```powershell
flutter gen-l10n
localazy upload -s
localazy upload
```

After downloading updated translations, regenerate again so Flutter refreshes the localization classes:

```powershell
localazy download -s
localazy download
flutter gen-l10n
```

## Why The ARB Strings Matter

The guide focuses on two strings that are easy to break during localization.

The greeting uses a placeholder:

```json
"welcomeUser": "Welcome back, {userName}"
```

Translations can move `{userName}`, but they must not rename or remove it.

The cart message uses ICU plural logic:

```json
"cartItemCount": "{count, plural, =0{You have no items in your cart} =1{You have 1 item in your cart} other{You have {count} items in your cart}}"
```

Flutter requires the `other` branch as the fallback case. If it is removed, `flutter gen-l10n` fails before the app can build.

## Useful Files

- `lib/l10n/app_en.arb`: English source strings and ARB metadata
- `lib/l10n/app_fr.arb`, `app_de.arb`, `app_es.arb`: translated ARB files
- `l10n.yaml`: Flutter localization generation config
- `localazy.json`: Localazy upload and download config
- `lib/src/app/maboutik_app.dart`: app-level locale state
- `lib/src/features/shop/maboutik_home_page.dart`: localized UI strings used in the screen
- `lib/src/features/shop/widgets/language_selector.dart`: locale selector UI

## Verify The Demo

Run these before pushing changes:

```powershell
flutter gen-l10n
flutter analyze
flutter test
```