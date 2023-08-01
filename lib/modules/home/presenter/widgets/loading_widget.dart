import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: Get.height,
      width: Get.width,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
