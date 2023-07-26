import 'package:get/get.dart';
import 'package:send_post_app/core/configs/getX/base_controller.dart';

import '../../core/constants/app_routes.dart';

class AuthController extends BaseController {
  void logIn() {
    Get.toNamed(AppRoutes.logIn);
  }
}
