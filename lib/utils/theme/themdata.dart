import 'package:flutter/material.dart';
import 'package:shop_bd/utils/theme/elevated_button_theme.dart';
import 'package:shop_bd/utils/theme/textfeild_theme.dart';

import 'package:shop_bd/utils/theme/texttheme.dart';

class Themeedata {
  Themeedata._();
  static ThemeData lighttheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: Colors.greenAccent,
      scaffoldBackgroundColor: Colors.white,
      textTheme: Texttheme.light,
      elevatedButtonTheme: shopelevatedbutton.light,
      inputDecorationTheme: TextFieldThemeConfig.light);

  //dark
  static ThemeData darktheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: Colors.greenAccent,
      scaffoldBackgroundColor: Colors.black,
      textTheme: Texttheme.dark,
      elevatedButtonTheme: shopelevatedbutton.dark,
      inputDecorationTheme: TextFieldThemeConfig.dark);
}
