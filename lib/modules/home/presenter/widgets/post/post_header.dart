import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/extensions/date.dart';
import 'package:send_post_app/core/extensions/space.dart';
import 'package:send_post_app/core/extensions/theme.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../entities/post.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Avatar of post
        Row(
          children: [
            CircleAvatar(
              foregroundImage: AssetImage(
                post.owner?.avatarUrl ?? AppImages.dummyAvatar,
              ),
            ),
            context.xSmall,
            Text(
              post.owner?.userName ?? 'Anonymous User',
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        // time text
        Text(
          post.shareTime?.calculate() ?? '',
          style: context.labelMedium?.copyWith(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
