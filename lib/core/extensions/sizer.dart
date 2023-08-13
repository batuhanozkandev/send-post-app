import 'package:flutter/material.dart';

extension BuildContextEntension on BuildContext {
  // size
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  Size get size => MediaQuery.of(this).size;

  double heightOfScreen(double value) =>
      (MediaQuery.of(this).size.height * value) / 100;

  double widthOfScreen(double value) =>
      (MediaQuery.of(this).size.width * value) / 100;
}
