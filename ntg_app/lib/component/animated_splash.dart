import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import '../screens/home_page.dart';

class AnimatedSplash extends StatelessWidget {
  const AnimatedSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 200,
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.fadeTransition,
      splash: Image.asset('images/logo.png'),
      nextScreen: const HomePage(),
      duration: 1000,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
