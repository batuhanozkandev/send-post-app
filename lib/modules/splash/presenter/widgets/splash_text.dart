import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/extensions/theme.dart';
import 'package:send_post_app/modules/splash/infra/datasources/splash_screen_controller.dart';

class SplashText extends GetWidget<SplashScreenController> {
  const SplashText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
        id: 'splashScreen',
        builder: (controller) {
          return AnimatedOpacity(
            duration: 1000.milliseconds,
            opacity: controller.isScreenLoaded ? 1.0 : 0.0,
            child: Text(
              controller.title,
              style: context.titleMedium?.copyWith(
                color: context.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        });
  }
}
