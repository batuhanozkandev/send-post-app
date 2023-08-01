import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/constants/app_icons.dart';
import 'package:send_post_app/core/extensions/sizer.dart';
import 'package:send_post_app/core/extensions/space.dart';
import 'package:send_post_app/core/extensions/theme.dart';
import 'package:send_post_app/modules/home/infra/datasources/user_controller.dart';
import 'package:send_post_app/modules/home/presenter/widgets/tab_category_model.dart';

import '../../../core/constants/app_contants.dart';
import '../../base/presenter/base_screen.dart';

class HomeScreen extends GetWidget<UserController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: BaseScreen(
          hasFocusHandler: true,
          hasBottomNavigationBar: true,
          child: GetBuilder<UserController>(
            id: 'userController',
            builder: (c) {
              return Stack(
                children: [
                  Center(
                    child: Column(
                      children: [
                        context.yMedium,
                        _HomeHeader(controller: controller),
                        context.ySmall,
                        TabBar(
                          padding: EdgeInsets.zero,
                          controller: controller.tabController,
                          indicatorColor: Colors.transparent,
                          onTap: (index) =>
                              controller.selectedTabIndex.value = index,
                          tabs: [
                            TabCategory(
                              tabController: controller.tabController,
                              text: 'Popular',
                              index: 0,
                            ),
                            TabCategory(
                              tabController: controller.tabController,
                              text: 'Trending',
                              index: 1,
                            ),
                            TabCategory(
                              tabController: controller.tabController,
                              text: 'Following',
                              index: 2,
                            ),
                          ],
                        ),
                        TabBarView(children: []),
                      ],
                    ),
                  ),
                  if (controller.isLoading)
                    Container(
                      color: Colors.red,
                      height: Get.height,
                      width: Get.width,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                ],
              );
            },
          )),
    );
  }
}

class _HomeHeader extends StatelessWidget {
  const _HomeHeader({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CommonSearchBox(
          controller: controller.searchBoxController,
          hint: 'Search',
        ),
        SvgPicture.asset(AppIcons.send),
      ],
    );
  }
}

class CommonSearchBox extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final Color? prefixColor;
  final Color? suffixColor;
  final Widget? prefix;
  final Widget? suffix;

  const CommonSearchBox({
    super.key,
    required this.controller,
    this.hint = '',
    this.prefixColor,
    this.suffixColor,
    this.prefix,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(context.radiusSearchBox),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: context.fieldBackgroundColor,
        hintText: hint,
        hintStyle: context.bodySmall?.copyWith(
          color: Colors.grey,
        ),
        suffixIconColor: suffixColor,
        prefix: prefix,
        prefixIconColor: prefixColor,
        suffixIcon: suffix,
        contentPadding: EdgeInsets.symmetric(horizontal: context.paddingHuge),
        isDense: false,
        constraints: BoxConstraints(
          maxHeight: context.heightOfScreen(
            AppConstants.commonSearchBoxHeight,
          ),
          maxWidth: context.widthOfScreen(
            AppConstants.commonSearchBoxWidth,
          ),
        ),
      ),
      style: context.bodyMedium,
    );
  }
}
