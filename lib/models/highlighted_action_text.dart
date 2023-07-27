import 'package:flutter/material.dart';
import 'package:send_post_app/core/extensions/theme.dart';

class HighlightedActionText extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const HighlightedActionText({
    super.key,
    required this.text,
    this.onTap,
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
        ),
      ),
    );
  }
}
