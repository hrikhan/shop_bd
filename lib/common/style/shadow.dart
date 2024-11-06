import 'package:flutter/material.dart';

class Shadowstyle {
  static final verticalproductshadow = BoxShadow(
      color: Colors.grey.withOpacity(0.1),
      spreadRadius: 7,
      blurRadius: 50,
      offset: Offset(0, 2));
  static final horizontalproductshadow = BoxShadow(
      color: Colors.grey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: Offset(0, 2));
}
