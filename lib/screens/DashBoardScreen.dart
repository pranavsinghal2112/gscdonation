import 'package:bhumi/helpingHand/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../buttons/fixLoginButton.dart';
import '../buttons/textFieldLoginButton.dart';
import 'intro1Screen.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Assets/images/loginBackground.png'),// loading a background image in the app screen and then covering it with the scaffold
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80), // to set the starting height of the
          child: AppBar(),
        ),
        backgroundColor: Colors.transparent,// setting the color of the scaffolding to transparent so that the background image is visible
        body: SingleChildScrollView(// to ignore the render overflow condition
          child: Center(
            child: Column( // to put all the different widgets into the same alignment
              children: [
                Container(
                  child: Image.asset('Assets/images/BhumiLogo.png'),
                ),
                Container(
                  child: Text(
                    '''  मिट्टी गुणवान,
             किसान बलवान!!''',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      color: brownColor,
                    ),
                  ),
                ),
                textFieldLoginButton(controller: TextEditingController(), hintText: 'Enter Phone No./Email', boxcolor: creamColor),
                FixLoginButton(
                  text: " GET OTP",
                  onPressed: () {
                    // Your button's action here
                  }, boxColor: brownColor,
                ),
                textFieldLoginButton(
                  controller: TextEditingController(),
                  hintText: 'Enter OTP', boxcolor: creamColor,
                ),
                FixLoginButton(
                  text: " Continue",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => intro1()));
                  }, boxColor: brownColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
