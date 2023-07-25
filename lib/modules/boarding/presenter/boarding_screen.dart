import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hi boarding screen'),
            SvgPicture.asset('assets/icons/ic_camera.svg'),
          ],
        ),
      ),
    );
  }
}
