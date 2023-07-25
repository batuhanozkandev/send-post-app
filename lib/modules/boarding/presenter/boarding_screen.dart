import 'package:flutter/material.dart';
import 'package:send_post_app/modules/base_screen/presenter/base_screen.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        background: Image.asset(
          'assets/images/background.png',
          fit: BoxFit.cover,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Text(
                'Send Photo App',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ));
  }
}
