import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({
    super.key,
    required this.selectedLocale,
    required this.label,
    required this.languageLabels,
    required this.onChanged,
  });

  final Locale selectedLocale;
  final String label;
  final Map<String, String> languageLabels;
  final ValueChanged<Locale> onChanged;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 280),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4, bottom: 8),
              child: Text(
                label,
                style: const TextStyle(
                  color: AppColors.amber,
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0,
                ),
              ),
            ),
            DropdownMenu<String>(
              width: 280,
              initialSelection: selectedLocale.languageCode,
              leadingIcon: const Icon(Icons.language),
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: const BorderSide(color: AppColors.softLine),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: const BorderSide(
                    color: AppColors.amber,
                    width: 2,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
              ),
              textStyle: const TextStyle(
                color: AppColors.ink,
                fontWeight: FontWeight.w700,
              ),
              dropdownMenuEntries: [
                for (final entry in languageLabels.entries)
                  DropdownMenuEntry(value: entry.key, label: entry.value),
              ],
              onSelected: (languageCode) {
                if (languageCode != null) {
                  onChanged(Locale(languageCode));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
