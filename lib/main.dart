import 'package:flutter/material.dart';
import 'package:flutter_login_exercise/Views/Login_Page/login_view.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_login_exercise/util/images.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(Images.imageLogo))),
      ),
      nextScreen: LoginView(),
      splashIconSize: 250,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.topToBottom,
    );
  }
}
