import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/constants/app_images.dart';
import 'package:send_post_app/core/extensions/space.dart';
import 'package:send_post_app/core/extensions/theme.dart';
import 'package:send_post_app/entities/post.dart';
import 'package:send_post_app/modules/home/infra/datasources/user_controller.dart';
import 'package:send_post_app/modules/home/presenter/widgets/home_header.dart';
import 'package:send_post_app/modules/home/presenter/widgets/loading_widget.dart';
import 'package:send_post_app/modules/home/presenter/widgets/post/post.dart';
import 'package:send_post_app/modules/home/presenter/widgets/tab_bar_widget.dart';

import '../../../entities/user.dart';
import '../../base_page/presenter/base_page.dart';

class HomeScreen extends GetWidget<UserController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.updateIndex();
    return DefaultTabController(
      animationDuration: 100.milliseconds,
      initialIndex: 0,
      length: 3,
      child: BasePage(
          hasFocusHandler: true,
          padding: EdgeInsets.symmetric(
            horizontal: context.paddingHuge,
          ),
          child: GetBuilder<UserController>(
            id: 'userController',
            builder: (c) {
              return Stack(
                children: [
                  Column(
                    children: [
                      HomeHeader(controller: controller),
                      context.ySmall,
                      TabBarWidget(
                        controller: controller,
                      ),
                      context.ySmall,
                      Expanded(
                        child: TabBarView(
                            controller: controller.tabController,
                            children: const [
                              _PopularPostsSection(),
                              _PopularPostsSection(),
                              _PopularPostsSection(),
                            ]),
                      ),
                    ],
                  ),
                  if (controller.isLoading) const LoadingWidget(),
                ],
              );
            },
          )),
    );
  }
}

class _PopularPostsSection extends StatelessWidget {
  const _PopularPostsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Column(
            children: [
              PostCard(
                post: Post(
                  id: 0,
                  shareTime: DateTime(1),
                  owner: User(
                    avatarUrl: AppImages.dummyPhoto,
                    userName: 'Username',
                  ),
                ),
                onTapAddBookMarkIcon: () {},
                onTapComment: () {},
                onTapLike: () {},
              ),
              context.ySmall,
            ],
          );
        });
  }
}
