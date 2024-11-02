import 'package:intl/intl.dart';

class Formatter {
  // Private constructor to prevent instantiation
  Formatter._();

  // Date formatting
  static String formatDate(DateTime date, {String pattern = 'yyyy-MM-dd'}) {
    return DateFormat(pattern).format(date);
  }

  static String formatDateTime(DateTime dateTime, {String pattern = 'yyyy-MM-dd HH:mm'}) {
    return DateFormat(pattern).format(dateTime);
  }

  // Time formatting
  static String formatTime(DateTime dateTime, {String pattern = 'HH:mm:ss'}) {
    return DateFormat(pattern).format(dateTime);
  }

  // Currency formatting (Default to USD)
  static String formatCurrency(double amount, {String locale = 'en_US', String symbol = '\$'}) {
    final formatter = NumberFormat.currency(locale: locale, symbol: symbol);
    return formatter.format(amount);
  }

  // Percentage formatting
  static String formatPercentage(double value, {int decimalDigits = 2}) {
    final formatter = NumberFormat.percentPattern()..minimumFractionDigits = decimalDigits;
    return formatter.format(value);
  }

  // Number formatting with decimal places
  static String formatNumber(double number, {int decimalDigits = 2}) {
    final formatter = NumberFormat()..minimumFractionDigits = decimalDigits;
    return formatter.format(number);
  }

  // Capitalize first letter of each word
  static String capitalizeWords(String input) {
    return input.split(' ').map((word) {
      if (word.isNotEmpty) {
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      }
      return word;
    }).join(' ');
  }

  // Format phone number (example for US format)
  static String formatPhoneNumber(String phoneNumber) {
    // Assuming phone number is 10 digits without any separators
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
    }
    return phoneNumber; // Return as-is if not 10 digits
  }
}
