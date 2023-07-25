import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/constants/theme/dark_theme/dark_theme.dart';
import 'package:send_post_app/core/constants/theme/light_theme/light_theme.dart';
import 'package:send_post_app/modules/boarding/presenter/boarding_screen.dart';

import 'core/configs/getX/page_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: pages,
      title: 'Send Photo App',
      theme: LightTheme().lightTheme,
      darkTheme: DarkTheme().darkTheme,
      home: const Scaffold(
        body: BoardingScreen(),
      ),
    );
  }
}
