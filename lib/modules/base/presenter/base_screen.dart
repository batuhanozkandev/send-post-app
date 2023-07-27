import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../infra/datasources/base_screen_controller.dart';
import '../infra/models/bottom_navigation_bar_item.dart';

class BaseScreen extends GetWidget<BaseScreenController> {
  final Widget child;
  final Widget? background;
  final EdgeInsetsGeometry? padding;
  final bool? hasBottomNavigationBar;
  final bool? resizeToAvoidBottomInset;
  final bool? hasFocusHandler;

  const BaseScreen({
    Key? key,
    required this.child,
    this.padding,
    this.background,
    this.hasBottomNavigationBar,
    this.resizeToAvoidBottomInset = false,
    this.hasFocusHandler = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      bottomNavigationBar: (hasBottomNavigationBar ?? false)
          ? BottomNavigationBar(
              items: navBarItemList,
              onTap: (index) => controller.changeScreen(
                index,
                controller.pages[index]!,
              ),
            )
          : null,
      body: GestureDetector(
        onTap: () {
          if (hasFocusHandler!) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: SizedBox(
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
      ),
    );
  }
}
