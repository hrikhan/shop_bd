import 'package:flutter/material.dart';
import 'package:shop_bd/utils/constant/enum.dart';
import 'package:shop_bd/utils/constant/size.dart';
import 'package:shop_bd/utils/device/deviceutils/deviceutils.dart';
import 'package:shop_bd/utils/helper/helper_funtion.dart';

class custom_searchbar_widgets extends StatelessWidget {
  const custom_searchbar_widgets({
    super.key,
    required this.text,
    this.icons,
    required this.showicon,
    required this.showbackground,
  });
  final String text;
  final IconData? icons;
  final bool showicon, showbackground;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isdark(context);
    return Padding(
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
            border: Border.all(color: Colors.black)),
        child: Row(
          children: [
            Icon(
              icons,
              color: Colors.black,
            ),
            SizedBox(
              width: AppSizes.spacebetweenitem,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
