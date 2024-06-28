import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';
import 'package:mvp/screens/notifications/notifications_screen.dart';
import 'package:mvp/screens/record_time.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key});

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  bool _isToggled = false;
  final bool _switchValue = false;

  void _toggleSwitch(bool value) {
    setState(() {
      _isToggled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
            ),
            body: Container(
              // color: Colors.white,
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(8),
              child: Column(children: [
                const Text(
                  'Kyle Calica',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Text('nathan@mvp-apps.com'),
                kHeight30,
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04), // Shadow color
                        spreadRadius: 4, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset:
                            const Offset(0, 3), // Offset in x and y direction
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          _showChangePasswordDialog(context);
                        },
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 0),
                        leading: Icon(
                          Icons.key_outlined,
                          color: Theme.of(context).cardColor,
                        ),
                        title: Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                      ),
                      kdivider,
                      //notifications
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const NotificationsScreen();
                            },
                          ));
                        },
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 0),
                        leading: Icon(
                          Icons.notifications_outlined,
                          color: Theme.of(context).cardColor,
                        ),
                        title: Text(
                          'Notifications',
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                      ),
                      kdivider,
                      //dark mode
                      ListTile(
                        leading: Icon(
                          Icons.dark_mode_outlined,
                          color: Theme.of(context).cardColor,
                        ),
                        title: Text(
                          'Dark Mode',
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 0),
                        trailing: Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                            value:
                                Provider.of<ThemeNotifier>(context).isDarkMode,
                            //  value: _switchValue,
                            onChanged: (value) {
                              Provider.of<ThemeNotifier>(context, listen: false)
                                  .toggleTheme();
                            },
                            // onChanged: (value) {
                            //   setState(() {
                            //     _switchValue = value;
                            //   });
                            // },
                          ),
                        ),
                      ),
                      kdivider,
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const RecordTime();
                            },
                          ));
                        },
                        leading: Icon(
                          Icons.video_camera_back_outlined,
                          color: Theme.of(context).cardColor,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 0),
                        title: Text(
                          'Record Time',
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                      ),
                      kdivider,
                      ListTile(
                        leading: Icon(
                          Icons.logout_outlined,
                          color: Theme.of(context).cardColor,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 0),
                        title: Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).cardColor,
                          ),
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
            borderRadius: BorderRadius.circular(22.0),
          ),
          child: Container(
            decoration: BoxDecoration(
                color: kwhite, borderRadius: BorderRadius.circular(22)),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.5),
                          shape: BoxShape.circle),
                      child: Icon(
                        color: Theme.of(context).primaryColor,
                        weight: 12,
                        Icons.close,
                        size: 14,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Are you sure you want to logout?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13.0, color: Theme.of(context).primaryColor),
                ),
                const SizedBox(height: 24.0),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all()),
                      child: const Center(
                        child: Text(
                          'Yes',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    kHeight10,
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: double.infinity,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all()),
                        child: const Center(
                          child: Text(
                            'No',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
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

  //CHANGE PASSWROD
  void _showChangePasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                const Text(
                  'Edit Password',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 12, right: 4, top: 12, bottom: 12),
                  child: Text(
                    'Please enter your email account to send code! ',
                    style: TextStyle(fontSize: 17, fontFamily: 'Poppins'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 35, // Adjust the width as needed
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 200, 199, 199)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                // TextFormField(
                //   //controller: _emailController,
                //   decoration: InputDecoration(
                //     hintStyle: const TextStyle(color: Colors.black),
                //     // //contentPadding:
                //     // //const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                //     labelText: 'Email',
                //     labelStyle: const TextStyle(fontSize: 11),
                //     border: OutlineInputBorder(
                //         borderSide: const BorderSide(
                //             width: 1, color: Color.fromRGBO(219, 218, 218, 1)),
                //         borderRadius: BorderRadius.circular(10)),
                //   ),
                // ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ])),
        );
      },
    );
  }
}
