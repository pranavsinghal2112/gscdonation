import 'package:bhumi/screens/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(flutterapp());
}

class flutterapp extends StatelessWidget {
  final brownColor = Color(0xff4b2d23);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "first app",
      debugShowCheckedModeBanner: false, // to remove the debug banner
      theme: ThemeData(
        primarySwatch: Colors.brown, // setting the theme of the app to brown color
        appBarTheme: AppBarTheme(
          color: Colors.transparent, // Make the AppBar background transparent
          elevation: 0, // Remove the shadowof the app bar
        ),
      ),
      home:
          Splash(), // calling the next page which is the splash screen to have a pop up feelS
    );
  }
}
