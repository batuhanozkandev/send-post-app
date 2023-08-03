import 'package:flutter/material.dart';
import 'package:send_post_app/modules/notification/presenter/widgets/title.dart';

import '../../../../models/settings_icon.dart';

class NotificationScreenHeader extends StatelessWidget {
  const NotificationScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // title
        const NotificationScreenTitle(title: 'Activity'),
        // settings icons
        SettingsIcon(
          onTap: () {},
        ),
      ],
    );
  }
}
