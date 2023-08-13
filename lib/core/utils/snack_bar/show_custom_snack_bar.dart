import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showCustomSnackBar({
  String? title = '',
  String? message = '',
  bool? isError = false,
  Duration? duration,
}) {
  final context = Get.context;
  Get.showSnackbar(
    GetSnackBar(
      title: title,
      duration: duration ?? 3.seconds,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.zero,
      messageText: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        height: (context?.size?.height ?? 0) / 16.0,
        decoration: BoxDecoration(
          color: (isError ?? false)
              ? ThemeData.light().colorScheme.error
              : ThemeData.light().primaryColorLight,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            message!,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
