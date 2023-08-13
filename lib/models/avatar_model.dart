import 'package:flutter/material.dart';

import '../core/constants/app_images.dart';

class AvatarModel extends StatelessWidget {
  const AvatarModel({
    super.key,
    this.url,
    this.radius,
  });

  final String? url;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      foregroundImage: AssetImage(
        //post.owner?.avatarUrl ?? AppImages.dummyAvatar,
        url ?? AppImages.dummyAvatar,
      ),
      radius: radius ?? 20,
    );
  }
}
