// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Maboutik';

  @override
  String get loadingMessage => 'Maboutik wird geladen';

  @override
  String get languageSelectorLabel => 'Sprache';

  @override
  String get englishLanguage => 'Englisch';

  @override
  String get frenchLanguage => 'Französisch';

  @override
  String get germanLanguage => 'Deutsch';

  @override
  String get spanishLanguage => 'Spanisch';

  @override
  String get namePromptTitle => 'Willkommen bei Maboutik';

  @override
  String get namePromptDescription =>
      'Gib deinen Namen ein, um den Shop zu personalisieren.';

  @override
  String get nameInputLabel => 'Dein Name';

  @override
  String get namePromptAction => 'Weiter';

  @override
  String welcomeUser(String userName) {
    return 'Willkommen zurück, $userName';
  }

  @override
  String get productName => 'Kabellose Tastatur';

  @override
  String get productDescription =>
      'Kompakte mechanische Tastatur für den täglichen Einsatz.';

  @override
  String get decreaseQuantityTooltip => 'Einen Artikel entfernen';

  @override
  String get increaseQuantityTooltip => 'Einen Artikel hinzufügen';

  @override
  String cartItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sie haben $count Artikel im Warenkorb',
      one: 'Sie haben 1 Artikel im Warenkorb',
      zero: 'Sie haben keine Artikel im Warenkorb',
    );
    return '$_temp0';
  }
}
