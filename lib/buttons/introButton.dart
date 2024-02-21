import 'package:flutter/material.dart';

import '../helpingHand/colors.dart';

class introButton extends StatelessWidget {
  final String text1;
  final VoidCallback onPressed1;

  introButton({required this.text1, required this.onPressed1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 274,
      height: 85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: brownColor),
      child: ElevatedButton(
        onPressed: onPressed1,
        child: Text(text1,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            )),
      ),
    );
  }
}
