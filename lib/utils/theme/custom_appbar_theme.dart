import 'package:flutter/material.dart';

class CustomAppBarTheme {
  static const AppBarTheme lightTheme = AppBarTheme(
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent, // Background color for light theme
    elevation: 0, // Shadow depth
    centerTitle: false,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.white, // Icon color
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white, // Actions icon color
    ),
  );

  static const AppBarTheme darkTheme = AppBarTheme(
    scrolledUnderElevation: 0,
    backgroundColor: Colors.black, // Background color for dark theme
    surfaceTintColor: Colors.red,
    elevation: 0, // Shadow depth
    centerTitle: false,
    titleTextStyle: TextStyle(
      color: Colors.tealAccent,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.tealAccent, // Icon color in dark mode
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.tealAccent, // Actions icon color
    ),
  );
}
