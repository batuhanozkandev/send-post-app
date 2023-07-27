import 'package:flutter/material.dart';

import '../base_theme/base_theme.dart';

class DarkTheme extends BaseTheme {
  final darkTheme = ThemeData(
      primaryColorLight: BaseTheme.primaryLight,
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: BaseTheme.primaryLight,
          onPrimary: BaseTheme.primaryLight,
          secondary: BaseTheme.secondary,
          onSecondary: BaseTheme.secondary,
          error: BaseTheme.error,
          onError: BaseTheme.error,
          background: BaseTheme.background,
          onBackground: BaseTheme.background,
          surface: BaseTheme.primaryLight,
          onSurface: BaseTheme.primaryLight));
}
