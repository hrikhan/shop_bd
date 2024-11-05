import 'package:flutter/material.dart';

import 'package:shop_bd/utils/constant/size.dart';
import 'package:shop_bd/utils/device/deviceutils/deviceutils.dart';
import 'package:shop_bd/utils/helper/helper_funtion.dart';

class custom_searchbar_widgets extends StatelessWidget {
  const custom_searchbar_widgets({
    super.key,
    required this.text,
    this.icons,
    this.showborder = true,
    this.showbackground = true, this.ontap,
  });
  final String text;
  final IconData? icons;
  final bool showborder, showbackground;
 final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isdark(context);
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultsize),
        child: Container(
          width: DeviceUtils.screenWidth(context),
          padding: const EdgeInsets.all(AppSizes.marginMedium),
          decoration: BoxDecoration(
              color: showbackground
                  ? dark
                      ? Colors.black
                      : Colors.white
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: showborder ? Border.all(color: Colors.black) : null),
          child: Row(
            children: [
              Icon(
                icons,
                color: dark ? Colors.white : Colors.black,
              ),
              SizedBox(
                width: AppSizes.spacebetweenitem,
              ),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
