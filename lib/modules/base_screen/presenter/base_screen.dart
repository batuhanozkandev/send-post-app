import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_post_app/modules/base_screen/infra/datasources/base_screen_controller.dart';

import '../infra/models/bottom_navigation_bar_item.dart';

class BaseScreen extends GetWidget<BaseScreenController> {
  final Widget child;
  final Widget? background;
  final EdgeInsetsGeometry? padding;
  final bool? hasBottomNavigationBar;

  const BaseScreen({
    Key? key,
    required this.child,
    this.padding,
    this.background,
    this.hasBottomNavigationBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: (hasBottomNavigationBar ?? false)
          ? BottomNavigationBar(
              items: navBarItemList,
              onTap: (index) => controller.changeScreen(index, '/'),
            )
          : null,
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
