import 'dart:async';

import 'package:flutter/material.dart';
import 'package:maboutik_starter/l10n/app_localizations.dart';

import '../../utils/app_spacing.dart';
import 'widgets/language_selector.dart';
import 'widgets/loading_view.dart';
import 'widgets/maboutik_app_bar.dart';
import 'widgets/name_prompt_dialog.dart';
import 'widgets/product_card.dart';

class MaboutikHomePage extends StatefulWidget {
  const MaboutikHomePage({
    super.key,
    this.loadingDuration = const Duration(milliseconds: 700),
    required this.selectedLocale,
    required this.onLocaleChanged,
  });

  final Duration loadingDuration;
  final Locale selectedLocale;
  final ValueChanged<Locale> onLocaleChanged;

  @override
  State<MaboutikHomePage> createState() => _MaboutikHomePageState();
}

class _MaboutikHomePageState extends State<MaboutikHomePage> {
  Timer? _loadingTimer;
  bool _isLoading = true;
  int _quantity = 0;
  String _userName = '';
  bool _hasPromptedForName = false;

  @override
  void initState() {
    super.initState();
    _loadingTimer = Timer(widget.loadingDuration, () {
      if (!mounted) {
        return;
      }

      setState(() {
        _isLoading = false;
      });

      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showNamePrompt();
      });
    });
  }

  @override
  void dispose() {
    _loadingTimer?.cancel();
    super.dispose();
  }

  void _increaseQuantity() {
    setState(() {
      _quantity += 1;
    });
  }

  void _decreaseQuantity() {
    if (_quantity == 0) {
      return;
    }

    setState(() {
      _quantity -= 1;
    });
  }

  Future<void> _showNamePrompt() async {
    if (_hasPromptedForName || !mounted) {
      return;
    }

    _hasPromptedForName = true;

    final name = await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (context) => const NamePromptDialog(),
    );

    if (!mounted || name == null) {
      return;
    }

    setState(() {
      _userName = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const LoadingView();
    }

    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: const MaboutikAppBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.lg,
            AppSpacing.md,
            AppSpacing.lg,
            AppSpacing.xl,
          ),
          children: [
            const SizedBox(height: AppSpacing.sm),
            LanguageSelector(
              selectedLocale: widget.selectedLocale,
              label: l10n.languageSelectorLabel,
              languageLabels: {
                'en': l10n.englishLanguage,
                'fr': l10n.frenchLanguage,
                'de': l10n.germanLanguage,
                'es': l10n.spanishLanguage,
              },
              onChanged: widget.onLocaleChanged,
            ),
            const SizedBox(height: AppSpacing.xl),
            Text(
              l10n.welcomeUser(_userName),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                letterSpacing: 0,
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            ProductCard(
              quantity: _quantity,
              productName: l10n.productName,
              productDescription: l10n.productDescription,
              decreaseQuantityTooltip: l10n.decreaseQuantityTooltip,
              increaseQuantityTooltip: l10n.increaseQuantityTooltip,
              cartMessage: l10n.cartItemCount(_quantity),
              onDecrease: _decreaseQuantity,
              onIncrease: _increaseQuantity,
            ),
          ],
        ),
      ),
    );
  }
}
