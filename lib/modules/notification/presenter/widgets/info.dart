import 'package:flutter/material.dart';
import 'package:send_post_app/core/extensions/space.dart';
import 'package:send_post_app/core/extensions/theme.dart';

class NotificationCardInfo extends StatelessWidget {
  const NotificationCardInfo({
    super.key,
    this.userName,
    this.action,
    this.timeAgo,
  });

  final String? userName;
  final String? action;
  final String? timeAgo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName ?? '',
          style: context.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        context.yyySmall,
        // Action
        Text(
          action ?? '',
          style: context.labelMedium?.copyWith(),
        ),
        context.yyySmall,

        Text(
          timeAgo ?? '',
          style: context.labelMedium?.copyWith(
            color: context.secondary,
          ),
        ),
      ],
    );
  }
}
