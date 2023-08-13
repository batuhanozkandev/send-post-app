import 'package:flutter/cupertino.dart';
import 'package:send_post_app/core/configs/getX/base_controller.dart';

class BaseScreenController extends BaseController {
  PageController baseScreenPageController = PageController();

  int activePageIndex = 0;

  Future<void> changeScreen(
    int index,
  ) async {
    updateState();
    activePageIndex = index;
    baseScreenPageController.jumpToPage(
      activePageIndex,
    );
    updateState();
  }

  @override
  void onInit() {
    builderId = 'baseScreen';
    super.onInit();
  }
}
