import 'package:flutter/material.dart';

 class divider extends StatelessWidget {
  const divider({
    super.key,
    required this.dark,
    required this.text
  });

  final bool dark;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? Colors.red : Colors.blue,
            thickness: 0.6,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(text),
        Flexible(
          child: Divider(
            color: dark ? Colors.red : Colors.blue,
            thickness: 0.6,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}