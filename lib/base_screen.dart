import 'package:flutter/material.dart';
import 'package:send_post_app/core/extensions/sizer.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final Widget? background;
  final EdgeInsetsGeometry? padding;

  const BaseScreen({
    Key? key,
    required this.child,
    this.padding,
    this.background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Stack(
          children: [
            if (background != null)
              SizedBox(
                  height: context.height,
                  width: context.width,
                  child: background!),
            // screen
            Padding(
              padding: padding ?? EdgeInsets.zero,
              child: child,
            ),
            // loading widget
          ],
        ),
      ),
    );
  }
}
