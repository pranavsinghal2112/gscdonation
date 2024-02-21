import 'dart:async';
import 'package:bhumi/helpingHand/colors.dart';
import 'package:flutter/material.dart';
import 'DashBoardScreen.dart';

class Splash extends StatefulWidget {
  //stateful since the satae of the splash screen is dynamic i.e. why it is stateful
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(
            seconds:
                2), //passing the time of splash screen to be shown at first instance
        () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  DashBoardScreen() // navigation to the next screen of the splash screen
              ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Center(
              child: Image.asset(
                  'Assets/images/BhumiLogo.png'), // loading the image of the bhumi app in to the splash screen
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              //passing gradient to the app
              colors: [
                upperGradient, //upper color of the gradient to be used in the screen, we can use multiple gradientcolors  in the flutter app screen just by adding them in a sequential manner
                lowerGradient, //lower end color of the gradient
              ],
              begin:
                  Alignment.topCenter, //to start the gradient verically upward
              end: Alignment
                  .bottomCenter, //to end the gradient verically downward
            ))));
  }
}
