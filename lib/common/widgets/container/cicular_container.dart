import 'package:flutter/material.dart';

class circular_container extends StatelessWidget {
  const circular_container({
    super.key,
    this.height = 400,
    this.width = 400,
    this.redius = 400,
    this.child,
    this.backgroundcolor = Colors.white,
  });
  final double? height;
  final double? width;
  final double redius;
  final Widget? child;
  final Color backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height,
      height: width,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(redius), color: backgroundcolor),
      child: child,
    );
  }
}
