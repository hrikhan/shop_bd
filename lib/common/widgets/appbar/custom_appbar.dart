import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_bd/utils/constant/size.dart';
import 'package:shop_bd/utils/device/deviceutils/deviceutils.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar(
      {super.key,
      this.title,
      this.backarrow = false,
      this.leadingicon,
      this.actions,
      this.leadingonpresed});
  final Widget? title;
  final bool backarrow;
  final IconData? leadingicon;
  final List<Widget>? actions;
  final VoidCallback? leadingonpresed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.marginMedium),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: backarrow
            ? IconButton(
                onPressed: () => Get.back(), icon: Icon(CupertinoIcons.back))
            : leadingicon != null
                ? IconButton(
                    onPressed: leadingonpresed, icon: Icon(leadingicon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.appbarheight());
}
