import 'package:flutter/material.dart';
import 'dart:io';

class DeviceUtils {
  // Private constructor to prevent instantiation
  DeviceUtils._();

  // Check if the device is running on Android
  static bool isAndroid() => Platform.isAndroid;

  // Check if the device is running on iOS
  static bool isIOS() => Platform.isIOS;

  // Get device orientation
  static bool isPortrait(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.portrait;

  static bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  // Get screen width
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  // Get screen height
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  // Get screen aspect ratio
  static double aspectRatio(BuildContext context) =>
      MediaQuery.of(context).size.aspectRatio;

  // Get device pixel ratio
  static double devicePixelRatio(BuildContext context) =>
      MediaQuery.of(context).devicePixelRatio;

  // Check if the device is a small phone
  static bool isSmallDevice(BuildContext context) => screenWidth(context) < 360;

  // Check if dark mode is enabled
  static bool isDarkMode(BuildContext context) =>
      MediaQuery.of(context).platformBrightness == Brightness.dark;

  // Get status bar height
  static double statusBarHeight(BuildContext context) =>
      MediaQuery.of(context).padding.top;

  // Get bottom padding (useful for devices with notches)
  static double bottomPadding(BuildContext context) =>
      MediaQuery.of(context).padding.bottom;
  static double appbarheight() {
    return kToolbarHeight;
  }
}
