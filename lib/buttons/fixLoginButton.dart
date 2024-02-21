import 'package:bhumi/helpingHand/colors.dart';
import 'package:flutter/material.dart';

class FixLoginButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color boxColor;


  FixLoginButton({required this.text, required this.onPressed, required this.boxColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
        width: 375,
        decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: boxColor,),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            )
        ),
      ),
    );
  }
}
