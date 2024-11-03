import 'package:flutter/material.dart';

import 'package:shop_bd/common/widgets/container/primary_header_container.dart';
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
                    icons:  Icons.search,
              
                    text: "search for item", showicon: true, showbackground: true,)

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


