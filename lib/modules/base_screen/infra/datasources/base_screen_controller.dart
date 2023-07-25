import 'package:get/get.dart';
import 'package:send_post_app/core/configs/getX/base_controller.dart';

class BaseScreenController extends BaseController {
  int activePageIndex = 0;

  Future<void> changeScreen(int index, String targetPath) async {
    updateState();
    activePageIndex = index;
    Get.toNamed(targetPath);
    updateState();
  }
}
