import 'package:flutter/material.dart';
import 'package:send_post_app/core/extensions/theme.dart';

class HighlightedActionText extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final double? fontSize;

  const HighlightedActionText({
    super.key,
    required this.text,
    this.onTap,
    this.fontSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Text(
        text,
        style: context.bodyMedium?.copyWith(
          color: context.primaryColorDark,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
