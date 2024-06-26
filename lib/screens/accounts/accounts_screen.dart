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
            appBar: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
            ),
            body: Container(
              // color: Colors.white,
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(8),
              child: Column(children: [
                const Text(
                  'Kyle Calica',
                  style: TextStyle(fontSize: 16,color: Color.fromRGBO(38, 38, 38, 1)),
                ),
                Text('nathan@mvp-apps.com'),
                kHeight30,
                Card(
                  color: Colors.white,
                  elevation: 1,
                  child: Column(
                    children: [
                      const ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                        leading: Icon(
                          Icons.notifications_outlined,
                          color: Color.fromRGBO(38, 38, 38, 1),
                        ),
                        title: Text(
                          'Notifications',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(87, 87, 87, 1)),
                        ),
                      ),
                      const Divider(
                        thickness: 0.4,
                        height: 0.2,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.dark_mode_outlined,
                          color: Color.fromRGBO(38, 38, 38, 1),
                        ),
                        title: const Text(
                          'Dark Mode',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(87, 87, 87, 1)),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                        trailing: CupertinoSwitch(
                          value: _switchValue,
                          onChanged: (value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        ),
                      ),
                      const Divider(
                        thickness: 0.4,
                        height: 0.2,
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.video_camera_back_outlined,
                          color: Color.fromRGBO(38, 38, 38, 1),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                        title: Text(
                          'Record Time',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(87, 87, 87, 1)),
                        ),
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(
                          Icons.logout_outlined,
                          color: Color.fromRGBO(38, 38, 38, 1),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                        title: const Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(87, 87, 87, 1)),
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
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Are you sure you want to logout?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13.0),
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
}
