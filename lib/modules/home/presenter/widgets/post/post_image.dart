import 'package:flutter/material.dart';

import '../../../../../core/constants/app_images.dart';

class PostImage extends StatelessWidget {
  const PostImage({
    super.key,
    this.postImagePath,
  });

  final String? postImagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Image.asset(
          postImagePath ?? AppImages.dummyPostImage,
          fit: BoxFit.cover,
        ));
  }
}
