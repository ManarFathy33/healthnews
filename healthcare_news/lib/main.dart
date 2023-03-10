import 'package:flutter/material.dart';
import 'package:healthcare_news/pages/home.dart';
import 'package:healthcare_news/pages/login.dart';
import 'package:healthcare_news/pages/signup.dart';
import 'package:healthcare_news/pages/splash.dart';
import 'package:healthcare_news/pages/start.dart';

void main() {
  runApp(const HealthCare());
}

class HealthCare extends StatelessWidget {
  const HealthCare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/start_page": (context) {
          return StartPage();
        },
        "/login_page": (context) {
          return LoginPage();
        },
        "/signup_page": (context) {
          return SignupPage();
        },
        "/home_page": (context) {
          return HomePage();
        },
        "/splash_page": (context) {
          return SplashPage();
        },
      },
      initialRoute: "/splash_page",
      debugShowCheckedModeBanner: false,
    );
  }
}
