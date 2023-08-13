import 'package:cloud_firestore/cloud_firestore.dart';
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
  model.User user = model.User();
  RxBool obscureIsActive = true.obs;

  final _authIns = FirebaseAuth.instance;
  final _firestoreIns = FirebaseFirestore.instance;

  FirebaseAuth? get authIns => _authIns;

  FirebaseFirestore? get firestoreIns => _firestoreIns;

  UserCredential? get userCredential => _userCredential;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
      _userCredential = await _authIns.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      if (_userCredential.user == null) return;

      // get user data whose is already logged in

      Cache.updateLogInState(loggedIn: true);
      final token = await userCredential?.user!.getIdToken();
      final uid = userCredential?.user!.uid;
      print('----------- Generated token ----------');
      print(token);
      Cache.setToken(token ?? '');
      Cache.setUID(uid ?? '');
      updateState(isLoading: false);
      Get.toNamed(AppRoutes.home);
    } on FirebaseAuthException catch (e) {
      FirebaseErrorHandler.handleAuthError(e.code);
    } catch (e) {
      showCustomSnackBar(message: 'Somethings went wrong');
    }
  }

  Future<void> logInWithToken(String token) async {
    updateState(isLoading: true);
    try {
      _userCredential = await _authIns.signInWithCustomToken(token);

      //if log in request is not successful
      if (_userCredential.user == null) return;

      Cache.updateLogInState(loggedIn: true);
      print('----------- Already in use token ----------');
      print(token);
      Get.toNamed(AppRoutes.home);
    } on FirebaseAuthException catch (e) {
      FirebaseErrorHandler.handleAuthError(e.code);
    } catch (e) {
      showCustomSnackBar(message: 'Somethings went wrong');
    }
    updateState(isLoading: false);
  }

  Future<void> signUp() async {
    updateState(isLoading: true);
    try {
      _userCredential = await _authIns.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);

      //if sign up request is not successful
      if (_userCredential.user == null) return;

      final token = await userCredential?.user!.getIdToken();
      Cache.setToken(token ?? '');

      final Map<String, dynamic> data = {
        'token': token,
        'name': null,
        'uID': _userCredential.user?.uid,
        'userName': null,
        'email': _userCredential.user?.email,
        'followerCount': 0,
        'followingCount': 0,
        'likes': 0,
        'interestedInTopics': [],
        'posts': [],
        'avatarUrl': null,
        'isBanned': false,
        'notifications': [],
      };
      _firestoreIns
          .collection('users')
          .doc(_userCredential.user?.uid)
          .set(data);

      Cache.updateLogInState(loggedIn: true);
      print('----------- Generated token ----------');
      print(token);
      final uid = userCredential?.user!.uid;
      Cache.setUID(uid ?? '');
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
