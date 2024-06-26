import 'package:flutter/material.dart';
import 'package:mvp/screens/login/login_screen.dart';

void main() {
  runApp(MvpApp());
}

class MvpApp extends StatelessWidget {
  const MvpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Montserrat', scaffoldBackgroundColor: Colors.white),
      home: LoginScreen(),
    );
  }
}
