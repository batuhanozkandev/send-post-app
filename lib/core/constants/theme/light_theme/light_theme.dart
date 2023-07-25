import 'package:flutter/material.dart';
import 'package:send_post_app/core/constants/theme/base_theme/base_theme.dart';

class LightTheme extends BaseTheme {
  final lightTheme = ThemeData(
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
