import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:send_post_app/modules/category/presenter/category_screen.dart';
import 'package:send_post_app/modules/home/presenter/home_screen.dart';

import '../../../core/constants/app_icons.dart';
import '../infra/datasources/base_screen_controller.dart';

class BaseScreen extends GetWidget<BaseScreenController> {
  final Widget? background;
  final EdgeInsetsGeometry? padding;
  final bool? resizeToAvoidBottomInset;
  final bool? hasFocusHandler;

  const BaseScreen({
    Key? key,
    this.padding,
    this.background,
    this.resizeToAvoidBottomInset = false,
    this.hasFocusHandler = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      bottomNavigationBar: GetBuilder<BaseScreenController>(
          id: 'baseScreen',
          builder: (c) {
            return BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  label: '',
                  icon: SvgPicture.asset(c.activePageIndex == 0
                      ? AppIcons.homeFilled
                      : AppIcons.home),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: SvgPicture.asset(AppIcons.category),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: SvgPicture.asset(AppIcons.addCircle),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: SvgPicture.asset(AppIcons.notification),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: SvgPicture.asset(AppIcons.profile),
                ),
              ],
              onTap: (index) => controller.changeScreen(index),
            );
          }),
      body: GestureDetector(
          onTap: () {
            if (hasFocusHandler!) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          },
          child: PageView(
            controller: controller.baseScreenPageController,
            children: const [
              HomeScreen(),
              CategoryScreen(),
              HomeScreen(),
              CategoryScreen(),
              CategoryScreen(),
            ],
          )),
    );
  }
}