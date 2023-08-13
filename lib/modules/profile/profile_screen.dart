import 'package:flutter/material.dart';
import 'package:send_post_app/core/constants/app_images.dart';
import 'package:send_post_app/core/extensions/sizer.dart';

import '../base_page/presenter/base_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
        child: Stack(
      children: [
        Positioned(
          top: -100,
          left: 0,
          right: 0,
          child: Container(
            height: context.heightOfScreen(40),
            width: context.widthOfScreen(150),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              ),
              child: Image.asset(
                AppImages.background,
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    ));
  }
}
