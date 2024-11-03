import 'package:flutter/material.dart';

import 'package:shop_bd/common/widgets/container/primary_header_container.dart';
import 'package:shop_bd/utils/constant/enum.dart';
import 'package:shop_bd/utils/constant/size.dart';
import 'package:shop_bd/utils/device/deviceutils/deviceutils.dart';

import 'home_screen_widget.dart/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header_container(
              child:
                  //appbar
                  Column(
                children: [
                  home_appbar(),

                  //searchbar
                  Container(
                    color: Colors.transparent,
                    width: DeviceUtils.screenWidth(context),
                    padding: EdgeInsets.all(AppSizes.marginMedium),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey)),
                  )

                  //catagories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
