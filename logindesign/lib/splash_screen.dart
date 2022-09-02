//splash Screen
import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:logindesign/constants/font_styles.dart';
import 'package:logindesign/constants/strings.dart';
import 'package:logindesign/login_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navigateToLoginScreen() async {
    Navigator.pushReplacement(
      context,
      PageTransition(
        child: const LoginScreen(),
        type: PageTransitionType.fade,
        isIos: true,
        duration: const Duration(milliseconds: 500),
      ),
    );
  }

  startTimer() {
    var duration = const Duration(seconds: 5);
    return Timer(duration, navigateToLoginScreen);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              AppStr().welcom,
              textStyle: AppFontStyle().splashScreenFontStyle(),
              speed: const Duration(milliseconds: 300),
            ),
          ],
        ),
      ),
    );
  }
}
