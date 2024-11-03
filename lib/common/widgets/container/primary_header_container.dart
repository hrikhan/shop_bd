import 'package:flutter/material.dart';
import 'package:shop_bd/common/widgets/container/cicular_container.dart';
import 'package:shop_bd/common/widgets/custom_shape/carve_edge_widget.dart';
import 'package:shop_bd/utils/constant/colors.dart';

class header_container extends StatelessWidget {
  const header_container({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return custom_edge_widgets(
      child: Container(
        color: ShopColors.primaryColor,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child:

              ///remember if ssize is infinite error occured

              Stack(
            children: [
              //background custom shapex
              Positioned(
                top: -150,
                right: -250,
                child: circular_container(
                  backgroundcolor: Colors.white24,
                ),
              ),
              Positioned(
                top: 100,
                right: -200,
                child: circular_container(
                  backgroundcolor: Colors.white24,
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
