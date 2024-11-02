import 'package:flutter/material.dart';

class TextFieldThemeConfig {
  static InputDecorationTheme light = InputDecorationTheme(
    filled: true,
    fillColor: const Color.fromARGB(255, 236, 229, 229), // Light fill color
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.blueAccent, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.redAccent, width: 2),
    ),
    labelStyle: TextStyle(color: Colors.black54, fontSize: 16),
    hintStyle: TextStyle(color: Colors.black38, fontSize: 14),
    prefixIconColor: Colors.black45,
    suffixIconColor: Colors.black45,
  );

  static InputDecorationTheme dark = InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[800], // Dark fill color
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey[600]!),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.redAccent, width: 2),
    ),
    labelStyle: TextStyle(color: Colors.white70, fontSize: 16),
    hintStyle: TextStyle(color: Colors.white54, fontSize: 14),
    prefixIconColor: Colors.white60,
    suffixIconColor: Colors.white60,
  );
}
