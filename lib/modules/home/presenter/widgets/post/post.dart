import 'package:flutter/material.dart';
import 'package:send_post_app/core/extensions/sizer.dart';
import 'package:send_post_app/core/extensions/theme.dart';
import 'package:send_post_app/modules/home/presenter/widgets/post/post_bottom.dart';
import 'package:send_post_app/modules/home/presenter/widgets/post/post_header.dart';
import 'package:send_post_app/modules/home/presenter/widgets/post/post_image.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../entities/post.dart';

class PostCard extends StatelessWidget {
  const PostCard(
      {Key? key,
      required this.post,
      this.onTapComment,
      this.onTapLike,
      this.onTapAddBookMarkIcon})
      : super(key: key);

  final Post post;
  final void Function()? onTapComment;
  final void Function()? onTapLike;
  final void Function()? onTapAddBookMarkIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.paddingHuge,
      ),
      child: Container(
        height: context.heightOfScreen(42),
        decoration: _postCardDecoration(context),
        child: Column(
          children: [
            Padding(
              padding: _postHeaderPadding(context),
              child: PostHeader(
                post: post,
              ),
            ),

            /// image
            PostImage(
              postImagePath: post.images?[0] ?? AppImages.dummyPostImage,
            ),
            Padding(
              padding: _postHeaderPadding(context),
              child: PostBottom(
                commentCount: 12,
                likeCount: 40,
                onTapAddBookMarkIcon: onTapAddBookMarkIcon,
                onTapCommentIcon: onTapComment,
                onTapLikeCount: onTapLike,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

EdgeInsets _postHeaderPadding(BuildContext context) {
  return EdgeInsets.symmetric(
    horizontal: context.paddingHuge,
    vertical: context.paddingHuge,
  );
}

BoxDecoration _postCardDecoration(BuildContext context) {
  return BoxDecoration(
    color: context.secondary,
    borderRadius: BorderRadius.all(
      Radius.circular(
        context.radiusLarge,
      ),
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.shade300,
        blurRadius: 6,
      ),
    ],
  );
}
