import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_post_app/modules/home/infra/datasources/user_controller.dart';

import '../../base/presenter/base_screen.dart';

class HomeScreen extends GetWidget<UserController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        child: GetBuilder<UserController>(
      id: 'userController',
      builder: (c) {
        return Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'User mail is ${controller.user.email} and name is ${controller.user.name}',
                  ),
                  Text(
                    'User UID is ${controller.user.uID} and isbanned is ${controller.user.isBanned}',
                  ),
                  GestureDetector(
                    onTap: () => controller.re(),
                    child: Container(
                      child: Text('sergrgserg'),
                    ),
                  )
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
    ));
  }
}
