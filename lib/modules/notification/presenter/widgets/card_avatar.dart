import 'package:flutter/material.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../models/avatar_model.dart';

class NotificationCardAvatar extends StatelessWidget {
  const NotificationCardAvatar({
    super.key,
    this.url,
  });

  final String? url;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AvatarModel(
          url: url ?? AppImages.dummyAvatar2,
        ),
      ],
    );
  }
}
