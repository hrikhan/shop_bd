import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop_bd/common/widgets/container/cicular_container.dart';

import 'package:shop_bd/common/widgets/container/primary_header_container.dart';

import 'package:shop_bd/common/widgets/custom_shape/rounded_image.dart';
import 'package:shop_bd/common/widgets/reuse_widgets/heading_text.dart';
import 'package:shop_bd/features/authintication/screen/login_screen.dart';
import 'package:shop_bd/features/shop/screens/home_screen_widget.dart/catagories.dart';
import 'package:shop_bd/features/shop/screens/home_screen_widget.dart/promoSlider.dart';
import 'package:shop_bd/features/shop/screens/home_screen_widget.dart/searchbar_widgets.dart';
import 'package:shop_bd/utils/constant/size.dart';
import 'package:shop_bd/utils/device/deviceutils/deviceutils.dart';
import 'package:shop_bd/utils/helper/helper_funtion.dart';

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
                  const home_appbar(),

                  //spacing
                  const SizedBox(
                    height: AppSizes.spacebetweenitem,
                  ),

                  //searchbar
                  const custom_searchbar_widgets(
                    icons: Icons.search,
                    text: "search for item",
                    showborder: true,
                    showbackground: true,
                  ),
                  SizedBox(
                    height: DeviceUtils.screenHeight(context) * 0.03,
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultpaddingspae),
                    child: Column(
                      children: [
                        section_heading(
                          showactionbutton: false,
                          tittle: "popular",
                          textcolor: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.screenHeight(context) * 0.02,
                  ),

                  //catagories
                  const Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultsize),
                    child: home_catagories(),
                  ),
                ],
              ),
            ),

            //body
            //for showing bannnar using carousal slider
            const Column(
              children: [
                promoSlider(
                  bannars: [
                    'assets/bannars/240_F_933318686_4zmM2AuA7miPrqxlGF50jY4cXzMH4kdr.jpg',
                    'assets/bannars/240_F_314289672_yEQMeEM4k2Z80wAeJmr0BQM01ajOPhVD.jpg',
                    'assets/bannars/WhatsApp Image 2024-11-04 at 14.29.09_5f16a33e.jpg'
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
