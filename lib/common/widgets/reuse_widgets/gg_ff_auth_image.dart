
import 'package:flutter/material.dart';
import 'package:shop_bd/utils/constant/image.dart';

class footer extends StatelessWidget {
  const footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 90, 81, 81),
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(images.google),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 90, 81, 81),
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(images.facebook),
          ),
        ),
      ],
    );
  }
}