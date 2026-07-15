abstract final class AppStrings {
  static const String appName = 'Maboutik';
  static const String loadingMessage = 'Loading Maboutik';
  static const String languageSelectorLabel = 'Language';
  static const String englishLanguage = 'English';
  static const String namePromptTitle = 'Welcome to Maboutik';
  static const String namePromptDescription =
      'Enter your name to personalize the shop.';
  static const String nameInputLabel = 'Your name';
  static const String namePromptAction = 'Continue';
  static const String productName = 'Wireless Keyboard';
  static const String productDescription =
      'Compact mechanical keyboard for daily work.';
  static const String decreaseQuantityTooltip = 'Remove one item';
  static const String increaseQuantityTooltip = 'Add one item';

  static String welcomeUser(String userName) {
    final displayName = userName.trim();

    if (displayName.isEmpty) {
      return 'Welcome back';
    }

    return 'Welcome back, $displayName';
  }

  static String cartItemCount(int count) {
    return switch (count) {
      0 => 'You have no items in your cart',
      1 => 'You have 1 item in your cart',
      _ => 'You have $count items in your cart',
    };
  }
}
