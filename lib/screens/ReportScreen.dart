import 'package:flutter/material.dart';
import '../helpingHand/colors.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
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
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(child: Image.asset('Assets/images/BhumiLogo.png')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        print('hello');
                      },
                      child: Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: creamColor),
                        child: Image.asset('Assets/images/reportIcon1.png'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('hello');
                      },
                      child: Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xffece5ce)),
                        child: Image.asset('Assets/images/reportIcon2.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        print('hello');
                      },
                      child: Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: creamColor),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('hello');
                      },
                      child: Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xffece5ce)),
                        child: Image.asset('Assets/images/reportIcon4.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        print('hello');
                      },
                      child: Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: creamColor),
                        child: Image.asset('Assets/images/reportIcon5 .png'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('hello');
                      },
                      child: Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xffece5ce)),
                        child: Image.asset('Assets/images/reportIcon6.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
