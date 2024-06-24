import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key});

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  bool _isToggled = false;
  bool _switchValue = true;

  void _toggleSwitch(bool value) {
    setState(() {
      _isToggled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(8),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Kyle Calica',
          style: kheading2font,
        ),
        Text('nathan@mvp-apps.com'),
        kHeight30,
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.notifications_outlined),
                title: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text(
                  'Dark Mode',
                  style: TextStyle(fontSize: 13),
                ),
                trailing: CupertinoSwitch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.video_camera_back_outlined),
                title: Text(
                  'Record Time',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout_outlined),
                title: Text(
                  'Logout',
                  style: TextStyle(fontSize: 13),
                ),
                onTap: () {
                  _showLogoutDialog(context);
                },
              ),
            ],
          ),
        ),
      ]),
    )));
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Are you sure you want to logout?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13.0),
                ),
                SizedBox(height: 24.0),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 30,
                      child: Center(
                        child: Text(
                          'Yes',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all()),
                    ),
                    kHeight10,
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: double.infinity,
                        height: 30,
                        child: Center(
                          child: Text(
                            'No',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all()),
                      ),
                    ),
                    kHeight10,
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // void _showLogoutDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('Logout'),
  //         content: Text('Are you sure you want to logout?'),
  //         actions: [
  //           TextButton(
  //             child: Text('No'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //           TextButton(
  //             child: Text('Yes'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //               // Add your logout logic here
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}
