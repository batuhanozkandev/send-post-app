import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_post_app/modules/base_page/infra/datasources/base_page_controller.dart';

class BasePage extends GetWidget<BasePageController> {
  final Widget child;
  final Widget? background;
  final EdgeInsetsGeometry? padding;
  final bool? resizeToAvoidBottomInset;
  final bool? hasFocusHandler;

  const BasePage({
    Key? key,
    required this.child,
    this.padding,
    this.background,
    this.resizeToAvoidBottomInset = false,
    this.hasFocusHandler = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
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
              SafeArea(
                child: Padding(
                  padding: padding ?? EdgeInsets.zero,
                  child: child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
