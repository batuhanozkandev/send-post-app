import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:send_post_app/core/extensions/space.dart';
import 'package:send_post_app/core/extensions/theme.dart';

import '../../../../../core/constants/app_icons.dart';

class PostBottom extends StatelessWidget {
  const PostBottom({
    super.key,
    this.commentCount = 0,
    this.likeCount = 0,
    this.onTapCommentIcon,
    this.onTapLikeCount,
    this.onTapAddBookMarkIcon,
  });

  final int? commentCount;
  final int? likeCount;
  final void Function()? onTapCommentIcon;
  final void Function()? onTapLikeCount;
  final void Function()? onTapAddBookMarkIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onTapAddBookMarkIcon ?? () {},
          child: SvgPicture.asset(
            AppIcons.addCircle,
          ),
        ),
        Row(
          children: [
            Text(
              (commentCount!).toString(),
              style: context.labelMedium,
            ),
            context.xxSmall,
            GestureDetector(
              onTap: onTapCommentIcon ?? () {},
              child: SvgPicture.asset(
                AppIcons.chat,
              ),
            ),
            context.xxSmall,
            Text(
              (likeCount!).toString(),
              style: context.labelMedium,
            ),
            context.xxSmall,
            GestureDetector(
              onTap: onTapLikeCount ?? () {},
              child: SvgPicture.asset(
                AppIcons.heart,
              ),
            ),
          ],
        )
      ],
    );
  }
}
