import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helpingHand/colors.dart';

class booking extends StatefulWidget{
  @override
  State<booking> createState() => _bookingState();
}

class _bookingState extends State<booking> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  String locationChoice = 'Use Current Location';

  Future _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != selectedDate)
      setState(() {
        selectedDate = pickedDate;
      });
  }

  Future _selectTime() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (pickedTime != null && pickedTime != selectedTime)
      setState(() {
        selectedTime = pickedTime;
      });}
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
              children: [
                Image.asset('Assets/images/BhumiLogo.png'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: _selectDate,
                        child: Text('Pick a Date'),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: _selectTime,
                        child: Text('Pick a Time'),
                      ),
                      SizedBox(height: 16.0),
                      DropdownButton(
                        value: locationChoice,
                        onChanged: (newValue) {
                          setState(()   {
                            locationChoice = newValue!;
                          });
                        },
                        items: [
                          'Use Current Location',
                          'Enter Your Location',
                        ].map<DropdownMenuItem>(
                              (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          // Handle the submit button action here
                          print('Date: $selectedDate');
                          print('Time: $selectedTime');
                          print('Location Choice: $locationChoice');
                        },
                        child: Text('Submit'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}