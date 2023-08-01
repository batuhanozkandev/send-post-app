import 'package:flutter/material.dart';
import 'package:send_post_app/modules/home/presenter/widgets/tab_category_model.dart';

import '../../infra/datasources/user_controller.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: EdgeInsets.zero,
      controller: controller.tabController,
      indicatorColor: Colors.transparent,
      onTap: (index) => controller.selectedTabIndex.value = index,
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
    );
  }
}
