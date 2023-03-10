import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_news/pages/start.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Color(0xFF104c75),
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            //scale: 5.0,
          ),
          // Text(
          //   'Health News ',
          //   style: TextStyle(
          //       fontSize: 25,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //       height: 5),
          // ),
        ],
      ),
      nextScreen: StartPage(),
      splashIconSize: 550,
      duration: 3000,
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
