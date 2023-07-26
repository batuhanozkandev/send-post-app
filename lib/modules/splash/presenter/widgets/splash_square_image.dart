import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/extensions/sizer.dart';
import 'package:send_post_app/core/extensions/theme.dart';
import 'package:send_post_app/modules/splash/infra/datasources/splash_screen_controller.dart';

class SplashSquareImage extends GetWidget<SplashScreenController> {
  final String image;

  const SplashSquareImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
        id: 'splashScreen',
        builder: (controller) {
          return AnimatedOpacity(
            duration: Random().nextInt(2000).milliseconds,
            opacity: controller.isScreenLoaded ? 1.0 : 0.0,
            child: AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                height: context.heightOfScreen(15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(context.radiusMedium),
                  ),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
