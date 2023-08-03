import 'package:flutter/material.dart';
import 'package:send_post_app/core/extensions/sizer.dart';
import 'package:send_post_app/core/extensions/space.dart';
import 'package:send_post_app/core/extensions/theme.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../entities/peer.dart';
import '../../presenter/widgets/card_avatar.dart';
import '../../presenter/widgets/info.dart';

class NotificationCardModel extends StatelessWidget {
  const NotificationCardModel({
    super.key,
    this.peer,
  });

  final Peer? peer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.heightOfScreen(10),
      decoration: BoxDecoration(
        color: context.primaryColorLight.withOpacity(0.5),
        borderRadius: BorderRadius.all(
          Radius.circular(
            context.radiusHuge,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: context.paddingMedium,
        ),
        child: Row(
          children: [
            context.xSmall,
            NotificationCardAvatar(
              url: peer?.avatarUrl,
            ),
            context.xSmall,
            NotificationCardInfo(
              userName: peer?.userName,
              action: 'liked your photo',
              timeAgo: '2 min ago',
            ),
            context.xHuge,
            SizedBox(
              height: context.heightOfScreen(6),
              child: Image.asset(
                AppImages.dummyPostImage,
              ),
            )
          ],
        ),
      ),
    );
  }
}
