import 'package:flutter/material.dart';

import 'package:shop_bd/common/widgets/container/primary_header_container.dart';
import 'package:shop_bd/common/widgets/reuse_widgets/heading_text.dart';
import 'package:shop_bd/features/shop/screens/home_screen_widget.dart/searchbar_widgets.dart';

import 'package:shop_bd/utils/constant/size.dart';

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

                  //spacing
                  SizedBox(
                    height: AppSizes.spacebetweenitem,
                  ),

                  //searchbar
                  custom_searchbar_widgets(
                    icons: Icons.search,
                    text: "search for item",
                    showborder: true,
                    showbackground: true,
                  ),
                  SizedBox(
                    height: AppSizes.spacebetweenitem,
                  ),

                  Padding(
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
