import 'package:flutter/material.dart';

class BaseTheme {
  // base colors
  static const Color primaryLight = Color(0xFF888BF4);
  static const Color primaryDark = Color(0xFF5151C6);
  static const Color secondary = Color(0xFFFFFFFF);
  static const Color error = Color(0xFFFA6650);
  static const Color background = Color(0xFFF1F1FE);
  static const Color fieldBackgroundColor = Color(0xFFF3F5F7);

  // base text styles
  static const TextStyle titleSmall = TextStyle(fontSize: 16.0);
  static const TextStyle titleMedium = TextStyle(fontSize: 20.0);
  static const TextStyle titleLarge = TextStyle(fontSize: 24.0);

  static const TextStyle labelSmall = TextStyle(fontSize: 8.0);
  static const TextStyle labelMedium = TextStyle(fontSize: 12.0);
  static const TextStyle labelLarge = TextStyle(fontSize: 16.0);

  static const TextStyle bodySmall = TextStyle(fontSize: 12.0);
  static const TextStyle bodyMedium = TextStyle(fontSize: 16.0);
  static const TextStyle bodyLarge = TextStyle(fontSize: 20.0);

  static const TextStyle selectedTabText = TextStyle(
    color: primaryDark,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle unSelectedTabText = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  );

  // base radius
  static const double radiusSmall = 4.0;
  static const double radiusMedium = 8.0;
  static const double radiusLarge = 12.0;
  static const double radiusHuge = 16.0;

  // special radius
  static const double radiusField = 40.0;
  static const double radiusButton = 40.0;
  static const double radiusSearchBox = 40.0;

  // base paddings
  static const double paddingSmall = 4.0;
  static const double paddingMedium = 8.0;
  static const double paddingLarge = 12.0;
  static const double paddingHuge = 16.0;
}
