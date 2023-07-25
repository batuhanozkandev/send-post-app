import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  // colors
  Color get primaryColorDark => Theme.of(this).primaryColorDark;

  Color get primaryColorLight => Theme.of(this).primaryColorLight;

  Color get secondary => Theme.of(this).colorScheme.secondary;

  Color get cardColor => Theme.of(this).cardColor;

  Color get errorColor => Theme.of(this).colorScheme.error;

  Color get background => Theme.of(this).colorScheme.background;
}
