import 'package:flutter/material.dart';
import 'package:shop_bd/common/widgets/container/cicular_container.dart';
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
              child: SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    Positioned(
                      top: -150,
                      right: -250,
                      child: circular_container(
                        backgroundcolor: Colors.white24,
                      ),
                    ),
                    Positioned(
                      top: 100,
                      right: -200,
                      child: circular_container(
                        backgroundcolor: Colors.white24,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
