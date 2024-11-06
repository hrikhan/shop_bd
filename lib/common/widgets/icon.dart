import 'package:flutter/material.dart';

import 'package:shop_bd/utils/helper/helper_funtion.dart';

class cicular_icon extends StatelessWidget {
  const cicular_icon({
    super.key,
    required this.icon,
    this.height,
    this.width,
    this.size = 26,
    this.color,
    this.bacgroundcolor,
    this.onpressed,
  });

  final IconData icon;
  final double? height, width, size;
  final Color? color;
  final Color? bacgroundcolor;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isdark(context);
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: bacgroundcolor != null
              ? bacgroundcolor!
              : dark
                  ? Colors.black.withOpacity(.5)
                  : Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: color,
              size: size,
            )));
  }
}
