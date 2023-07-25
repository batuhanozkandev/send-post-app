import 'package:flutter/material.dart';
import 'package:send_post_app/core/constants/theme/light_theme/light_theme.dart';
import 'package:send_post_app/modules/boarding/presenter/boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Send Photo App',
      theme: LightTheme().lightTheme,
      home: const Scaffold(
        body: BoardingScreen(),
      ),
    );
  }
}
