import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_bd/features/authintication/screen/login_screen.dart';

class OnboardingController extends GetxController {
  static OnboardingController get intance => Get.find();
  final pageController = PageController();
  // current index observer
  Rx<int> current_pageindex = 0.obs;
  //update current index when page is scroll
  void pageindicator(index) {
    current_pageindex.value = index;
  }

  //jump to the next page
  void dotcount(index) {
    current_pageindex.value = index;
    pageController.jumpTo(index);
  }

  //update current index
  void nextpage() {
    if (current_pageindex.value == 2) {
      Get.offAll(LoginScreen());
    } else {
      int page = current_pageindex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //upadate current index jump t to the next page
  void skippage() {
    current_pageindex.value = 2;
    pageController.jumpToPage(2);
  }
}
