import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/constants/app_images.dart';
import 'package:send_post_app/core/extensions/space.dart';
import 'package:send_post_app/modules/splash/infra/datasources/splash_screen_controller.dart';
import 'package:send_post_app/modules/splash/presenter/widgets/splash_text.dart';

import '../../base_page/presenter/base_page.dart';
import '../infra/models/centered_image_design.dart';

class SplashScreen extends GetWidget<SplashScreenController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.forwardSplashAnimation();
    controller.redirect();
    return BasePage(
      background: Image.asset(
        AppImages.lightBackground,
        fit: BoxFit.cover,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // splash text
            const SplashText(),
            // space
            context.ySmall,
            // 4 centered boxes design
            const CenteredImagesDesign(),
          ],
        ),
      ),
    );
  }
}
