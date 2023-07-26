import 'package:get/get.dart';
import 'package:send_post_app/core/configs/getX/base_controller.dart';

class SplashScreenController extends BaseController {
  bool isScreenLoaded = false;
  String title = 'Send Post App';

  Future<void> forwardSplashAnimation() async {
    Future.delayed(10.milliseconds, () {
      updateState();
      isScreenLoaded = true;
      updateState();
    });
  }

  @override
  void onInit() {
    builderId = 'splashScreen';
    super.onInit();
  }
}
