import 'package:flutter/material.dart';
import 'package:shop_bd/common/widgets/custom_shape/cicular_contianeer.dart';

class home_catagories extends StatelessWidget {
  const home_catagories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return ccicle_container_with_text(
              image: 'assets/catagory_image/bycicle.png',
              title: 'bicycle',
              onpressed: () {},
            );
          }),
    );
  }
}
