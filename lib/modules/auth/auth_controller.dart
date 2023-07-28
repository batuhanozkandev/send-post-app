import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/configs/getX/base_controller.dart';
import 'package:send_post_app/core/utils/error/firebase_error_handler.dart';
import 'package:send_post_app/core/utils/snack_bar/show_custom_snack_bar.dart';
import 'package:send_post_app/entities/user.dart' as model;

import '../../core/configs/cache/cache.dart';
import '../../core/constants/app_routes.dart';

class AuthController extends BaseController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  late final UserCredential _userCredential;
  RxBool obscureIsActive = true.obs;

  final _ins = FirebaseAuth.instance;

  FirebaseAuth? get ins => _ins;

  UserCredential? get userCredential => _userCredential;

  Future<void> logIn() async {
    updateState(isLoading: true);
    try {
      // if the fields are not validated
      if (!(formKey.currentState?.validate() ?? true)) {
        showCustomSnackBar(
            message: 'Please check your information', isError: true);
        return;
      }

      // try to log in user
      _userCredential = await _ins.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      if (_userCredential.user == null) return;

      // get user data whose is already logged in

      Cache.updateLogInState(loggedIn: true);
      final token = await userCredential?.user!.getIdToken();
      print('----------- Generated token ----------');
      print(token);
      Cache.setToken(token ?? '');
      Get.toNamed(AppRoutes.home);
    } on FirebaseAuthException catch (e) {
      FirebaseErrorHandler.handleAuthError(e.code);
    } catch (e) {
      showCustomSnackBar(message: 'Somethings went wrong');
    }
    updateState(isLoading: false);
  }

  Future<void> logInWithToken() async {
    updateState(isLoading: true);
    try {
      String? token = Cache.getToken();
      _userCredential = await _ins.signInWithCustomToken(token ?? '');

      //if log in request is not successful
      if (_userCredential.user == null) return;

      Cache.updateLogInState(loggedIn: true);
      print('----------- Already in use token ----------');
      print(token);
      Cache.setToken(token ?? '');
      Get.toNamed(AppRoutes.home);
    } on FirebaseAuthException catch (e) {
      FirebaseErrorHandler.handleAuthError(e.code);
    } catch (e) {
      showCustomSnackBar(message: 'Somethings went wrong');
    }
    updateState(isLoading: false);
  }

  Future<void> signUp(model.User user, FormData formData) async {
    updateState(isLoading: true);
    try {
      _userCredential = await _ins.createUserWithEmailAndPassword(
          email: user.email ?? '', password: user.password ?? '');

      //if sign up request is not successful
      if (_userCredential.user == null) return;

      Cache.updateLogInState(loggedIn: true);
      final token = await userCredential?.user!.getIdToken();
      print('----------- Generated token ----------');
      print(token);
      Cache.setToken(token ?? '');
      Get.toNamed(AppRoutes.home);
    } on FirebaseAuthException catch (e) {
      FirebaseErrorHandler.handleAuthError(e.code);
    } catch (e) {
      showCustomSnackBar(message: 'Somethings went wrong');
    }
    updateState(isLoading: false);
  }

  void toggleVisibilityOfInput() {
    updateState(isLoading: false);
    obscureIsActive.value = !obscureIsActive.value;
    updateState(isLoading: false);
  }

  @override
  void onInit() {
    builderId = 'auth';
    super.onInit();
  }
}
