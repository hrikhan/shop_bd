import 'package:flutter/material.dart';

class circular_container extends StatelessWidget {
  const circular_container({
    super.key,
    this.height = 400,
    this.width = 400,
    this.redius = 400,
    this.child,
    this.backgroundcolor = Colors.white,
    this.margin,
    this.padding 
  });
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final EdgeInsetsGeometry? padding;
  final double redius;
  final Widget? child;
  final Color backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height:   height,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(redius), color: backgroundcolor),
      child: child,
    );
  }
}
