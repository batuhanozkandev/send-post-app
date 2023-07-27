import 'package:get/get.dart';
import 'package:send_post_app/core/configs/cache/cache.dart';
import 'package:send_post_app/core/configs/getX/base_controller.dart';
import 'package:send_post_app/core/constants/app_routes.dart';
import 'package:send_post_app/modules/auth/auth_controller.dart';

class SplashScreenController extends BaseController {
  bool isScreenLoaded = false;
  String title = 'Send Post App';
  final authController = AuthController();

  Future<void> forwardSplashAnimation() async {
    Future.delayed(10.milliseconds, () {
      updateState();
      isScreenLoaded = true;
      updateState();
    });
  }

  Future<void> redirect() async {
    Future.delayed(2000.milliseconds, () async {
      updateState();
      final userToken = Cache.getToken();
      if (userToken == null) {
        Get.offAndToNamed(AppRoutes.logIn);
      } else {
        await authController.logInWithToken();
      }
      updateState();
    });
  }

  @override
  void onInit() {
    builderId = 'splashScreen';
    super.onInit();
  }
}
