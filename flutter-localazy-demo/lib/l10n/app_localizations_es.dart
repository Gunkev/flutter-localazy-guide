// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Maboutik';

  @override
  String get loadingMessage => 'Cargando Maboutik';

  @override
  String get languageSelectorLabel => 'Idioma';

  @override
  String get englishLanguage => 'Inglés';

  @override
  String get frenchLanguage => 'francés';

  @override
  String get germanLanguage => 'alemán';

  @override
  String get spanishLanguage => 'Español';

  @override
  String get namePromptTitle => 'Te damos la bienvenida a Maboutik';

  @override
  String get namePromptDescription =>
      'Introduce tu nombre para personalizar la tienda.';

  @override
  String get nameInputLabel => 'Tu nombre';

  @override
  String get namePromptAction => 'Continuar';

  @override
  String welcomeUser(String userName) {
    return 'Te damos la bienvenida de nuevo, $userName';
  }

  @override
  String get productName => 'Teclado inalámbrico';

  @override
  String get productDescription =>
      'Teclado mecánico compacto para el uso diario.';

  @override
  String get decreaseQuantityTooltip => 'Quitar una unidad';

  @override
  String get increaseQuantityTooltip => 'Añadir una unidad';

  @override
  String cartItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tienes $count artículos en tu carrito',
      one: 'Tienes 1 artículo en tu carrito',
      zero: 'No tienes ningún artículo en tu carrito',
    );
    return '$_temp0';
  }
}
