import 'package:bhumi/buttons/introButton.dart';
import 'package:bhumi/screens/bookingScreen.dart';
import 'package:bhumi/screens/insuranceScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helpingHand/colors.dart';
import 'ReportScreen.dart';

class intro1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          upperGradient,
          lowerGradient,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_circle_outlined),
              )
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Shubhash'), // User's name
                accountEmail: Text('+91 1800 000 000'), // User's email
                currentAccountPicture: CircleAvatar(
                  // User's profile picture
                  backgroundImage: NetworkImage(
                    'https://example.com/path-to-profile-image.jpg',
                  ),
                ),
                decoration: BoxDecoration(
                  color: brownColor,
                ),
              ),
              ListTile(
                leading: Icon(Icons.phone_in_talk),
                title: Text('Change Phone No.'),
                onTap: () {
                  // Add your home screen navigation logic here
                },
              ),

              ListTile(
                leading: Icon(Icons.email_rounded),
                title: Text('Change Email Address'),
                onTap: () {
                  // Add your home screen navigation logic here
                },
              ),
              ListTile(
                leading: Icon(Icons.perm_phone_msg),
                title: Text('Helpline'),
                onTap: () {
                  // Add your home screen navigation logic here
                },
              ),
              ExpansionTile(
                leading: Icon(Icons.location_searching),
                title: Text('Farmer Village/Zone'),
                children: [
                  ListTile(
                    title: Text('Dasna'),
                    onTap: () {
                      // Handle Sub Item 1 tap
                    },
                  ),
                  ListTile(
                    title: Text('Ghaziabad'),
                    onTap: () {
                      // Handle Sub Item 2 tap
                    },
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.details),
                title: Text('Your Crop Details'),
                onTap: () {
                  // Add your home screen navigation logic here
                },
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Change Language'),
                onTap: () {
                  // Add your settings screen navigation logic here
                },
              ),
              Spacer(),
              Divider(),
              Center(
                child: ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text('About'),
                  onTap: () {
                    // Add your settings screen navigation logic here
                  },
                ),
              ),Center(
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Log out'),
                  onTap: () {
                    // Add your settings screen navigation logic here
                  },
                ),
              ),
              // Add more drawer items as needed
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset('Assets/images/BhumiLogo.png'),
                introButton(text1: "Find Nearest Center", onPressed1: () {}),
                introButton(text1: "Book a Soil Test", onPressed1: () { Navigator.push(context,
                    MaterialPageRoute(builder: (context) => booking()));}),
                introButton(
                    text1: "Report",
                    onPressed1: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Report()));
                    }),
                introButton(text1: "Crop Insurance", onPressed1: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> insurance()));
                }),
                introButton(text1: "Government Schemes", onPressed1: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
