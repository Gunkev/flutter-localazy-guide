// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Maboutik';

  @override
  String get loadingMessage => 'Loading Maboutik';

  @override
  String get languageSelectorLabel => 'Language';

  @override
  String get englishLanguage => 'English';

  @override
  String get frenchLanguage => 'French';

  @override
  String get germanLanguage => 'German';

  @override
  String get spanishLanguage => 'Spanish';

  @override
  String get namePromptTitle => 'Welcome to Maboutik';

  @override
  String get namePromptDescription =>
      'Enter your name to personalize the shop.';

  @override
  String get nameInputLabel => 'Your name';

  @override
  String get namePromptAction => 'Continue';

  @override
  String welcomeUser(String userName) {
    return 'Welcome back, $userName';
  }

  @override
  String get productName => 'Wireless Keyboard';

  @override
  String get productDescription =>
      'Compact mechanical keyboard for daily work.';

  @override
  String get decreaseQuantityTooltip => 'Remove one item';

  @override
  String get increaseQuantityTooltip => 'Add one item';

  @override
  String cartItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'You have $count items in your cart',
      one: 'You have 1 item in your cart',
      zero: 'You have no items in your cart',
    );
    return '$_temp0';
  }
}
