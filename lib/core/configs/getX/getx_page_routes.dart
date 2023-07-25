import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:send_post_app/core/constants/app_routes.dart';
import 'package:send_post_app/modules/boarding/presenter/boarding_screen.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(
    name: AppRoutes.boarding,
    page: () => const BoardingScreen(),
  ),
];
