import 'package:flutter/material.dart';
import 'package:send_post_app/core/extensions/theme.dart';

import '../../../../models/highlighted_action_text.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({
    super.key,
    required this.title,
    required this.seeMore,
  });

  final String title;
  final void Function() seeMore;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: context.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        HighlightedActionText(
          text: 'View More',
          fontSize: 12.0,
          onTap: seeMore,
        ),
      ],
    );
  }
}
