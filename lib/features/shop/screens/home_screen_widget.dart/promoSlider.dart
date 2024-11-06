import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_bd/common/widgets/container/cicular_container.dart';
import 'package:shop_bd/common/widgets/custom_shape/rounded_image.dart';
import 'package:shop_bd/features/shop/controller/home_controller.dart';
import 'package:shop_bd/utils/constant/colors.dart';
import 'package:shop_bd/utils/constant/size.dart';

class promoSlider extends StatelessWidget {
  const promoSlider({
    super.key,
    required this.bannars,
  });
  final List<String> bannars;

  @override
  Widget build(BuildContext context) {
    final controllar = Get.put(HomeController());
    return Column(children: [
      CarouselSlider(
        items: bannars
            .map((url) => rounded_image(
                  imageurl: url,
               
                ))
            .toList(),
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1,
          onPageChanged: (index, _) => {controllar.updatepageindicator(index)},
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultsize),
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                circular_container(
                    height: 20,
                    width: 4,
                    backgroundcolor:
                        controllar.carosal_slider_current_index.value == i
                            ? Colors.black
                            : ShopColors.primaryColor,
                    margin: EdgeInsets.only(right: 20)),
            ],
          ),
        ),
      ),
    ]);
  }
}
