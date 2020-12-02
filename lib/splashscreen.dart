import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dept_project/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'dashboard.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: 'assets/splash-logo.png',
          splashIconSize: 400,
          nextScreen: Onboarding(),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.scale,
          backgroundColor: Colors.white
        )
    );
  }
}