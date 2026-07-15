import 'package:flutter/material.dart';
import 'package:maboutik_starter/l10n/app_localizations.dart';

import '../features/shop/maboutik_home_page.dart';
import '../theme/app_theme.dart';

class MaboutikApp extends StatefulWidget {
  const MaboutikApp({super.key});

  @override
  State<MaboutikApp> createState() => _MaboutikAppState();
}

class _MaboutikAppState extends State<MaboutikApp> {
  Locale _locale = const Locale('en');

  void _changeLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      locale: _locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appName,
      home: MaboutikHomePage(
        selectedLocale: _locale,
        onLocaleChanged: _changeLocale,
      ),
    );
  }
}
