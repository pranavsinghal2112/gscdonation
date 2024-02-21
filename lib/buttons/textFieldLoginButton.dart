import 'package:flutter/material.dart';

class textFieldLoginButton extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Color boxcolor;

  textFieldLoginButton({required this.controller, required this.hintText, required this.boxcolor ,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,

      decoration: BoxDecoration(
        color: boxcolor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
