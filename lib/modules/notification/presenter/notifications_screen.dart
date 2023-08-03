import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/extensions/space.dart';
import 'package:send_post_app/core/extensions/theme.dart';
import 'package:send_post_app/modules/base_page/presenter/base_page.dart';
import 'package:send_post_app/modules/notification/infra/datasources/notification_screen_controller.dart';
import 'package:send_post_app/modules/notification/presenter/widgets/header.dart';

import '../../../core/constants/app_images.dart';
import '../../../entities/peer.dart';
import '../infra/models/notification_card.dart';

class NotificationScreen extends GetWidget<NotificationScreenController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      hasFocusHandler: true,
      padding: EdgeInsets.symmetric(
        horizontal: context.paddingHuge,
      ),
      child: Column(
        children: [
          const NotificationScreenHeader(),
          context.ySmall,
          ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    NotificationCardModel(
                      peer: Peer(
                        userName: 'Test test',
                        avatarUrl: AppImages.dummyPhoto,
                      ),
                    ),
                    context.yySmall,
                  ],
                );
              }),
        ],
      ),
    );
  }
}
