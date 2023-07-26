import 'package:flutter/material.dart';
import 'package:send_post_app/core/extensions/sizer.dart';

import '../../../../core/constants/app_images.dart';
import '../../presenter/widgets/splash_square_image.dart';

class CenteredImagesDesign extends StatelessWidget {
  const CenteredImagesDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.widthOfScreen(50.0),
      child: GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
          crossAxisCount: 2,
        ),
        children: const [
          SplashSquareImage(image: AppImages.dummyPhoto),
          SplashSquareImage(image: AppImages.dummyPhoto2),
          SplashSquareImage(image: AppImages.dummyPhoto3),
          SplashSquareImage(image: AppImages.dummyPhoto),
        ],
      ),
    );
  }
}
