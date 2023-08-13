import 'package:flutter/material.dart';
import 'package:send_post_app/core/extensions/sizer.dart';
import 'package:send_post_app/core/extensions/theme.dart';

class CustomCommonButton extends StatelessWidget {
  final String text;
  final double? heightOfScreen;
  final double? widthOfScreen;
  final void Function() onTap;

  const CustomCommonButton({
    super.key,
    required this.text,
    required this.onTap,
    this.heightOfScreen = 5,
    this.widthOfScreen = 80,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          context.primaryColorDark,
          context.primaryColorLight,
        ]),
        borderRadius: BorderRadius.all(
          Radius.circular(context.radiusButton),
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          surfaceTintColor: Colors.transparent,
          fixedSize: Size(
            context.widthOfScreen(widthOfScreen!),
            context.heightOfScreen(heightOfScreen!),
          ),
          backgroundColor: Colors.transparent,
          disabledForegroundColor: Colors.transparent,
          disabledBackgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          foregroundColor: Colors.transparent,
        ),
        onPressed: onTap,
        child: Center(
            child: Text(
          text,
          style: context.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.secondary,
          ),
        )),
      ),
    );
  }
}
