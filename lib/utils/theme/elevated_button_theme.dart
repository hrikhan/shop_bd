import 'package:flutter/material.dart';

class shopelevatedbutton {
  shopelevatedbutton._();

  static final light = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: const Color.fromARGB(255, 239, 239, 239),
          backgroundColor: const Color.fromARGB(255, 3, 3, 71),
          textStyle: TextStyle(color: Colors.white)));
  static final dark = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.red,
          backgroundColor: Colors.white,
          textStyle: TextStyle(color: Colors.white)));
}
