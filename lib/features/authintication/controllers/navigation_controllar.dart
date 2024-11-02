import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_bd/features/shop/screens/home_screen.dart';

class NavigationControllar extends GetxController {
  final Rx<int> seletedindex = 0.obs;
  final screen = [
    HomeScreen(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
}
