import 'package:flutter/material.dart';
import 'package:shop_bd/utils/constant/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: ShopColors.primaryColor,
              padding: EdgeInsets.all(0),
              child: Stack(
                children: [
                  Container(
                    width: 40,
                    height: 400,
                    padding: EdgeInsets.all(0),
                   decoration: BoxDecoration(
                    
                   ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
