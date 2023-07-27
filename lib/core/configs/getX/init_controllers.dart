import 'package:get/get.dart';
import 'package:send_post_app/modules/auth/auth_controller.dart';
import 'package:send_post_app/modules/splash/infra/datasources/splash_screen_controller.dart';

import '../../../modules/base/infra/datasources/base_screen_controller.dart';

class ControllerInitialiser {
  ControllerInitialiser._();

  static void init() {
    Get.lazyPut(() => BaseScreenController(), fenix: true);
    Get.lazyPut(() => SplashScreenController(), fenix: true);
    Get.lazyPut(() => AuthController(), fenix: true);
  }
}
