// theme_provider.dart
import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeData get currentTheme {
    return _isDarkMode
        ? ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.black,
            primaryColor: Colors.black,
            canvasColor: Colors.grey[900], // Background for containers
            cardColor: const Color.fromARGB(
                255, 214, 212, 212), // Background for cards
            colorScheme: ColorScheme.dark(surface: Colors.grey[900]!
                // Custom background color
                ),
            //accentColor: Colors.white,
            appBarTheme: const AppBarTheme(backgroundColor: kblack),
            tabBarTheme: const TabBarTheme(
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                ),
                unselectedLabelColor: Color.fromARGB(255, 246, 241, 241),
                indicatorColor: kblack,
                labelColor: kblack,
                labelStyle: TextStyle(fontSize: 18)),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                selectedItemColor: kwhite,
                selectedLabelStyle: TextStyle(fontSize: 11),
                unselectedLabelStyle: TextStyle(fontSize: 10)),
            textTheme: const TextTheme(
                headlineMedium: TextStyle(color: kwhite),
                labelMedium: TextStyle(color: kwhite),
                bodyMedium: TextStyle(color: Color.fromRGBO(232, 226, 226, 1))),

            extensions: const [
              CustomTheme(containerBorderColor: Colors.white),
            ],
          )
        : ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: kwhite),
            brightness: Brightness.light,
            scaffoldBackgroundColor: Colors.white,
            primaryColor: Colors.white,
            // accentColor: Colors.black,
            canvasColor: Colors.grey[100], // Background for containers
            cardColor:
                const Color.fromRGBO(87, 87, 87, 1), // Background for cards
            colorScheme: ColorScheme.light(
              surface: Colors.grey[200]!, // Custom background color
            ),

            tabBarTheme: const TabBarTheme(
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                  ),
                ),
                unselectedLabelColor: Colors.grey,
                indicatorColor: kblack,
                labelColor: kblack,
                labelStyle: TextStyle(fontSize: 18)),
            textTheme: const TextTheme(
                headlineMedium: TextStyle(color: kblack),
                labelMedium: TextStyle(color: kblack),
                bodyMedium: TextStyle(color: Color.fromRGBO(87, 87, 87, 1))),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                selectedItemColor: kblack,
                selectedLabelStyle: TextStyle(fontSize: 11),
                unselectedLabelStyle: TextStyle(fontSize: 10)),

            extensions: const [
              CustomTheme(containerBorderColor: Colors.black),
            ],
          );
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Color? containerBorderColor;

  const CustomTheme({this.containerBorderColor});

  @override
  CustomTheme copyWith({Color? containerBorderColor}) {
    return CustomTheme(
      containerBorderColor: containerBorderColor ?? this.containerBorderColor,
    );
  }

  @override
  CustomTheme lerp(ThemeExtension<CustomTheme>? other, double t) {
    if (other is! CustomTheme) return this;
    return CustomTheme(
      containerBorderColor:
          Color.lerp(containerBorderColor, other.containerBorderColor, t),
    );
  }
}

class BoxShadowThemeData {
  final BoxShadow boxShadow;

  const BoxShadowThemeData({required this.boxShadow});

  BoxShadowThemeData copyWith({BoxShadow? boxShadow}) {
    return BoxShadowThemeData(
      boxShadow: boxShadow ?? this.boxShadow,
    );
  }
}
