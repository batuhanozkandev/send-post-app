import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseScreen extends StatelessWidget {
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
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit),
                ),
              ],
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
