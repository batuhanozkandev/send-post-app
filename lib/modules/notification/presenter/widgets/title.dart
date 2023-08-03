import 'package:flutter/material.dart';
import 'package:send_post_app/core/extensions/theme.dart';

class NotificationScreenTitle extends StatelessWidget {
  const NotificationScreenTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.titleLarge?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
