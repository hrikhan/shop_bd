import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_bd/features/authintication/controllers/navigation_controllar.dart';
import 'package:shop_bd/utils/helper/helper_funtion.dart';

class NevigationMenu extends StatelessWidget {
  const NevigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isdark(context);
    final controllar = Get.put(NavigationControllar());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controllar.seletedindex.value,
          onDestinationSelected: (index) =>
              controllar.seletedindex.value = index,
          height: 50,
          elevation: 0,
          backgroundColor: dark ? Colors.black : Colors.white,
          indicatorColor: dark
              ? Colors.white.withOpacity(0.2)
              : Colors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'home'),
            NavigationDestination(icon: Icon(Icons.shop), label: 'shop'),
            NavigationDestination(
                icon: Icon(Icons.favorite), label: 'fevorite'),
            NavigationDestination(
                icon: Icon(Icons.account_box), label: 'account'),
          ],
        ),
      ),
      body: Obx(() => controllar.screen[controllar.seletedindex.value]),
    );
  }
}
