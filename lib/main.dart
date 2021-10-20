import 'package:flutter/material.dart';
import 'package:travelling_dong/ui/pages/bonus_page.dart';
import 'package:travelling_dong/ui/pages/get_started_page.dart';
import 'package:travelling_dong/ui/pages/main_page.dart';
import 'package:travelling_dong/ui/pages/sign_up_page.dart';
import 'package:travelling_dong/ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStartedPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/bonus': (context) => const BonusPage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}
