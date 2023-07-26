import 'package:flutter/material.dart';
import 'package:send_post_app/core/constants/theme/base_theme/base_theme.dart';

extension ThemeExtension on BuildContext {
  // colors
  Color get primaryColorDark => Theme.of(this).primaryColorDark;

  Color get primaryColorLight => Theme.of(this).primaryColorLight;

  Color get secondary => Theme.of(this).colorScheme.secondary;

  Color get cardColor => Theme.of(this).cardColor;

  Color get errorColor => Theme.of(this).colorScheme.error;

  Color get background => Theme.of(this).colorScheme.background;

  // text styles
  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;

  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;

  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;

  TextStyle? get labelSmall => Theme.of(this).textTheme.labelSmall;

  TextStyle? get labelMedium => Theme.of(this).textTheme.labelMedium;

  TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge;

  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;

  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;

  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;

  // radius

  double get radiusSmall => BaseTheme.radiusSmall;

  double get radiusMedium => BaseTheme.radiusMedium;

  double get radiusLarge => BaseTheme.radiusLarge;
}
