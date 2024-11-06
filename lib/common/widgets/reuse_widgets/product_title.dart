import 'package:flutter/material.dart';
import 'package:shop_bd/utils/constant/size.dart';

class product_title extends StatelessWidget {
  const product_title({
    super.key,
    required this.title,
    this.smallsize = false,
    this.maxlines = 2,
    this.align,
  });
  final String title;
  final bool smallsize;
  final int maxlines;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: AppSizes.marginSmall),
      child: Column(
        children: [
          Text(
            "Moneyplant tree",
            style: smallsize
                ? Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.apply(color: Colors.black)
                : Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.apply(color: Colors.black),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
