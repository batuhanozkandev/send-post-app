import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showCustomSnackBar({
  String? title = '',
  String? message = '',
  bool? isError = false,
  Duration? duration,
}) {
  Get.showSnackbar(
    GetSnackBar(
      backgroundColor: (isError ?? false)
          ? ThemeData.light().colorScheme.error
          : ThemeData.light().primaryColorLight,
      title: title,
      duration: duration ?? 1.seconds,
      messageText: Text(
        message!,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.white,
        ),
      ),
    ),
  );
}
