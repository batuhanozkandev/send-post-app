import 'package:get/get.dart';
import 'package:send_post_app/core/configs/cache/cache.dart';
import 'package:send_post_app/core/configs/getX/base_controller.dart';
import 'package:send_post_app/core/constants/app_routes.dart';
import 'package:send_post_app/modules/home/infra/datasources/user_controller.dart';

class SplashScreenController extends BaseController {
  bool isScreenLoaded = false;
  String title = 'Send Post App';
  final _userController = Get.find<UserController>();

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
      final _token = Cache.getToken();
      print('TOKEN=> $_token');
      if (_token == null || _token == '') {
        Get.offAndToNamed(AppRoutes.logIn);
        updateState();
        return;
      } else {
        //await authController.logInWithToken(userToken);
        final uID = Cache.getUID();
        _userController.fetchData(uID).then(
              (value) => Get.offAndToNamed(AppRoutes.home),
            );
        updateState();
        return;
      }
    });
  }

  @override
  void onInit() {
    builderId = 'splashScreen';
    super.onInit();
  }
}
