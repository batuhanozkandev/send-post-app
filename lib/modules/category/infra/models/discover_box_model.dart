import 'package:flutter/material.dart';
import 'package:send_post_app/core/extensions/space.dart';
import 'package:send_post_app/core/extensions/theme.dart';

import '../../../../core/constants/app_images.dart';

class DiscoverBoxModel extends StatelessWidget {
  const DiscoverBoxModel({
    super.key,
    this.imageUrl,
    this.text,
    this.height,
    this.width,
  });

  final String? imageUrl;
  final String? text;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: height,
              width: width,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    context.radiusHuge,
                  ),
                ),
                child: Image.asset(
                  imageUrl ?? AppImages.dummyPostImage2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    context.radiusHuge,
                  ),
                ),
              ),
            ),
            Text(
              text ?? '',
              style: context.bodyLarge?.copyWith(
                color: context.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        context.xxSmall,
      ],
    );
  }
}
