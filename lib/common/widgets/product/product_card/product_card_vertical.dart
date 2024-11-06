import 'package:flutter/material.dart';
import 'package:shop_bd/common/style/shadow.dart';
import 'package:shop_bd/common/widgets/container/cicular_container.dart';
import 'package:shop_bd/common/widgets/custom_shape/rounded_image.dart';
import 'package:shop_bd/common/widgets/icon.dart';
import 'package:shop_bd/common/widgets/reuse_widgets/product_title.dart';
import 'package:shop_bd/utils/constant/size.dart';
import 'package:shop_bd/utils/helper/helper_funtion.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isdark(context);
    //container with padding,color,edges,radius and shadow
    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [Shadowstyle.horizontalproductshadow],
          borderRadius: BorderRadius.circular(AppSizes.defaultsize),
          color: Colors.grey.shade300),
      child:

          //thumbnill,wishlist,discount tag
          Column(
        children: [
          circular_container(
            redius: 25,
            height: 180,
            padding: const EdgeInsets.all(
              AppSizes.marginSmall,
            ),
            backgroundcolor: dark ? Colors.black87 : Colors.white,
            child: Stack(
              children: [
                rounded_image(
                  imageurl:
                      'assets/bannars/WhatsApp Image 2024-11-04 at 14.29.09_5f16a33e.jpg',
                  applyimageredius: true,
                ),
                Positioned(
                  top: 10,
                  left: 3,
                  child: circular_container(
                    height: 30,
                    width: 50,
                    redius: 8,
                    backgroundcolor: Colors.amber.withOpacity(0.5),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.paddingSmall, vertical: 4),
                    child: Text(
                      "25%",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
                //favorite
                const Positioned(
                  top: 0,
                  right: 0,
                  child: cicular_icon(
                    icon: Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                //details
              ],
            ),
          ),
          //---details
          const product_title(title: 'Moneyplant Tree',)
        ],
      ),
    );
  }
}

