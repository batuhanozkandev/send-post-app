import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:send_post_app/core/extensions/sizer.dart';

import '../core/constants/app_icons.dart';

class SettingsIcon extends StatelessWidget {
  const SettingsIcon({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: SvgPicture.asset(
        AppIcons.settings,
        height: context.widthOfScreen(7),
      ),
    );
  }
}
