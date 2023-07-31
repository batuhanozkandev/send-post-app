import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/configs/getX/base_controller.dart';
import 'package:send_post_app/core/utils/error/firebase_error_handler.dart';
import 'package:send_post_app/core/utils/snack_bar/show_custom_snack_bar.dart';
import 'package:send_post_app/entities/user.dart';
import 'package:send_post_app/modules/auth/auth_controller.dart';

class UserController extends BaseController {
  User user = User();
  final _authController = Get.find<AuthController>();

  Future<void> fetchData(String? uID) async {
    updateState(isLoading: true);
    if (uID == null) {
      showCustomSnackBar(message: 'uID is null', isError: true);
      return;
    }
    try {
      final ref = _authController.firestoreIns?.collection('users').doc(uID);
      if (ref == null) {
        print('!!!!!!!! THE USER DOC REF IS NULL !!!!!!!!!!!!');
        return;
      }
      ref.get().then((DocumentSnapshot<Map<String, dynamic>> snapshot) {
        user = User.fromFirestore(snapshot);
      });
      updateState(isLoading: false);
    } on FirebaseException catch (e) {
      FirebaseErrorHandler.handleAuthError(e.code);
    } catch (e) {
      print('Error while fetching user data');
    }
    updateState(isLoading: false);
  }

  Future<void> re() async {
    updateState(
      isLoading: true,
    );
    print('tatpatpatp');
    await Future.delayed(3.seconds);
    print(isLoading);
    updateState(
      isLoading: false,
    );
  }

  @override
  void onInit() {
    builderId = 'userController';
    super.onInit();
  }
}
