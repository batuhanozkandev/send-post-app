import 'package:get/get.dart';
import 'package:send_post_app/core/configs/getX/base_controller.dart';
import 'package:send_post_app/core/constants/app_routes.dart';

class BaseScreenController extends BaseController {
  int activePageIndex = 0;
  Map<int, String> pages = {
    0: AppRoutes.home,
    1: AppRoutes.boarding,
    2: AppRoutes.boarding,
    3: AppRoutes.boarding,
  };

  Future<void> changeScreen(int index, String targetPath) async {
    updateState();
    activePageIndex = index;
    Get.toNamed(targetPath);
    updateState();
  }

  @override
  void onInit() {
    builderId = 'baseScreen';
    super.onInit();
  }
}
