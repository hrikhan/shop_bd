import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  final carosal_slider_current_index = 0.obs;
  void updatepageindicator(index) {
    carosal_slider_current_index.value = index;

  }
}
