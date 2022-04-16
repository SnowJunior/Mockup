import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:interapp/Presentation/home.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset("assets/100175-bloading.json"),
      nextScreen: const HomeScreen(),
      backgroundColor: Colors.blueAccent,
      splashIconSize: 260,
      duration: 2500,
      splashTransition: SplashTransition.sizeTransition,
      animationDuration: const Duration(milliseconds: 2000),
    );
  }
}