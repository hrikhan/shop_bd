import 'package:flutter/material.dart';

class custom_card_widget extends StatelessWidget {
  const custom_card_widget({
    super.key, required this.onpressed,
  });
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
        onPressed:onpressed,
        icon: Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),
      Positioned(
        right: 0,
        child: Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            " 3",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      )
    ]);
  }
}
