import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_bd/features/authintication/screen/onboarding.dart';
import 'package:shop_bd/utils/theme/themdata.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme:Themeedata.lighttheme ,
      darkTheme: Themeedata.darktheme,
      home: Onboarding(),
    );
  }
}