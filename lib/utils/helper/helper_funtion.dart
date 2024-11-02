import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HelperFunction {
  // A function to get a color based on a string value
  static Color? getColor(String value) {
    switch (value.toLowerCase()) {
      case 'green':
        return Colors.green;
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'yellow':
        return Colors.yellow;
      case 'orange':
        return Colors.orange;
      case 'purple':
        return Colors.purple;
      case 'pink':
        return Colors.pink;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      case 'grey':
      case 'gray': // Accept both spellings
        return Colors.grey;
      default:
        return Colors.transparent; // Default color if input doesn't match
    }
  }

  static customsnakebar(String massage) {}

  static Showalart(String tittle, String massage) {}
  static navigatetootherscreen() {}
  static trancatetext() {}

  static Size screensize() {
    return MediaQuery.of(Get.context!).size;
  }

  static bool isdark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }


  
  // Function to show a custom alert dialog
  static void showAlert(String title, String message) {
    Get.defaultDialog(
      title: title,
      middleText: message,
      textConfirm: "OK",
      onConfirm: () => Get.back(),
      barrierDismissible: false,
    );
  }

  // Navigate to a specific screen with optional data
  static Future<void> navigateToScreen(Widget screen,
      {dynamic arguments}) async {
    await Get.to(() => screen, arguments: arguments);
  }

  // Navigate back to the previous screen

  // Truncate text with ellipsis if it exceeds a certain length
  static String truncateText(String text, {int length = 20}) {
    return (text.length > length) ? "${text.substring(0, length)}..." : text;
  }

  // Format a DateTime to a readable string
  static String formatDateTime(DateTime date,
      {String format = "yyyy-MM-dd HH:mm"}) {
    return "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')} "
        "${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}";
  }

  // Validate email format
  static bool isValidEmail(String email) {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  // Validate phone number format
  static bool isValidPhoneNumber(String phone) {
    final phoneRegex = RegExp(r'^\+?[0-9]{10,15}$');
    return phoneRegex.hasMatch(phone);
  }

  // Check if device is in landscape orientation
  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  // Return padding based on screen size
  static EdgeInsets responsivePadding(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return EdgeInsets.symmetric(horizontal: width * 0.05);
  }
}
