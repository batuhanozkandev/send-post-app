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

  final _ins = FirebaseAuth.instance;
  late UserCredential userCredential;
  RxBool obscureIsActive = true.obs;

  FirebaseAuth? get ins => _ins;

  Future<void> logIn(model.User user) async {
    updateState(isLoading: true);
    try {
      userCredential = await _ins.signInWithEmailAndPassword(
          email: user.email ?? '', password: user.password ?? '');

      //if log in request is not successful
      if (userCredential.user == null) return;

      Cache.updateLogInState(loggedIn: true);
      final token = await userCredential.user!.getIdToken();
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
      userCredential = await _ins.signInWithCustomToken(token ?? '');

      //if log in request is not successful
      if (userCredential.user == null) return;

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
      userCredential = await _ins.createUserWithEmailAndPassword(
          email: user.email ?? '', password: user.password ?? '');

      //if sign up request is not successful
      if (userCredential.user == null) return;

      Cache.updateLogInState(loggedIn: true);
      final token = await userCredential.user!.getIdToken();
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

  @override
  void onInit() {
    builderId = 'auth';
    super.onInit();
  }
}
