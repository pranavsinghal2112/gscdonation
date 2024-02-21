import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpingHand/colors.dart';

class insurance extends StatefulWidget{
  @override
  State<insurance> createState() => _insuranceState();
}

class _insuranceState extends State<insurance> {
 String insuranceType = 'Select -';
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
     backgroundColor: Colors.transparent,
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
       children: <Widget>[
        UserAccountsDrawerHeader(
         accountName: Text('Shubhash'), // User's name
         accountEmail: Text('+91 1800 000 000'), // User's email
         currentAccountPicture: CircleAvatar(
          // User's profile picture
          backgroundImage: NetworkImage(
           'https://example.com/path-to-profile-image.jpg',
          ),
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
        // Add more drawer items as needed
       ],
      ),
     ),
     body: SingleChildScrollView(
      child: Center(
       child: Column(
        children: [
         Image.asset('Assets/images/BhumiLogo.png'),
         DropdownButton(
          value: insuranceType,
          onChanged: (newValue) {
           setState(()   {
            insuranceType = newValue!;
           });
          },
          items: <String>[
           'Select -',
           'Public Insurance',
           'Private Insurance',
          ].map<DropdownMenuItem<String>>(
               (String value) {
            return DropdownMenuItem<String>(
             value: value,
             child: Text(value),
            );
           },
          ).toList(),
         ),

        ],
       ),
      ),
     ),


    ),
   );
  }
}