import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:send_post_app/core/constants/app_routes.dart';
import 'package:send_post_app/modules/auth/sign_up/presenter/sign_up_screen.dart';
import 'package:send_post_app/modules/boarding/presenter/boarding_screen.dart';
import 'package:send_post_app/modules/home/presenter/home_screen.dart';
import 'package:send_post_app/modules/profile/profile_screen.dart';

import '../../../modules/auth/log_in/presenters/log_in_screen.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(
    name: AppRoutes.boarding,
    page: () => const BoardingScreen(),
  ),
  GetPage(
    name: AppRoutes.logIn,
    page: () => LogInScreen(),
  ),
  GetPage(
    name: AppRoutes.signUp,
    page: () => const SignUpScreen(),
  ),
  GetPage(
    name: AppRoutes.home,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: AppRoutes.profile,
    page: () => const ProfileScreen(),
  ),
];
