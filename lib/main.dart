import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/configs/getX/init_controllers.dart';
import 'package:send_post_app/core/constants/theme/dark_theme/dark_theme.dart';
import 'package:send_post_app/core/constants/theme/light_theme/light_theme.dart';

import 'core/configs/cache/cache.dart';
import 'core/configs/getX/page_routes.dart';
import 'modules/splash/presenter/splash_screen.dart';

void main() async {
  Cache.init();
  ControllerInitialiser.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        body: SplashScreen(),
      ),
    );
  }
}
