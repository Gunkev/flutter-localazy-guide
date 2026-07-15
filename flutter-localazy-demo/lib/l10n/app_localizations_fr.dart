// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Maboutik';

  @override
  String get loadingMessage => 'Chargement de Maboutik...';

  @override
  String get languageSelectorLabel => 'Langue';

  @override
  String get englishLanguage => 'Anglais';

  @override
  String get frenchLanguage => 'Français';

  @override
  String get germanLanguage => 'Allemand';

  @override
  String get spanishLanguage => 'Espagnol';

  @override
  String get namePromptTitle => 'Bienvenue sur Maboutik';

  @override
  String get namePromptDescription =>
      'Saisissez votre nom pour personnaliser la boutique.';

  @override
  String get nameInputLabel => 'Votre nom';

  @override
  String get namePromptAction => 'Continuer';

  @override
  String welcomeUser(String userName) {
    return 'Bon retour, $userName';
  }

  @override
  String get productName => 'Clavier sans fil';

  @override
  String get productDescription =>
      'Clavier mécanique compact pour le travail au quotidien.';

  @override
  String get decreaseQuantityTooltip => 'Retirer un article';

  @override
  String get increaseQuantityTooltip => 'Ajouter un article';

  @override
  String cartItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vous avez $count articles dans votre panier',
      one: 'Vous avez 1 article dans votre panier',
      zero: 'Vous n’avez aucun article dans votre panier',
    );
    return '$_temp0';
  }
}
