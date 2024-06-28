import 'package:flutter/material.dart';
import 'package:mvp/provider/theme_provider.dart';
import 'package:mvp/screens/login/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
      child: const MvpApp(),
    ),
  );
}
class MvpApp extends StatelessWidget {
  const MvpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
           return MaterialApp(
            debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: themeNotifier.currentTheme,
          home: const LoginScreen(),
        );
      },

     
    );
  }
}
