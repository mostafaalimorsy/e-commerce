import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shopzler/view/screens/start/control_view.dart';
import 'package:page_transition/page_transition.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
      duration:3000,
      splash: Image.asset("assets/images/splash.png",
      fit: BoxFit.cover,),
      nextScreen: ControlView(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
      splashIconSize: double.infinity,
    );
  }
  }

