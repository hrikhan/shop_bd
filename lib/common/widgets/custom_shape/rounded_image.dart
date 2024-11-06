import 'package:flutter/material.dart';
import 'package:shop_bd/utils/constant/image.dart';
import 'package:shop_bd/utils/constant/size.dart';

class rounded_image extends StatelessWidget {
  const rounded_image({
    super.key,
    this.height,
    this.width,
    required this.imageurl,
    this.applyimageredius = true,
    this.border,
    this.fit = BoxFit.fill,
    this.padding = AppSizes.defaultpaddingspae,
    this.networkimage = false,
    this.onpressed,
    this.borderredeious = 30,
  });
  final double? height, width;
  final String imageurl;
  final bool applyimageredius;
  final BoxBorder? border;
  final BoxFit? fit;
  final double? padding;
  final bool networkimage;
  final VoidCallback? onpressed;
  final double borderredeious;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppSizes.defaultpaddingspae),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderredeious),
            color: Colors.grey,
          ),
          child: ClipRRect(
            borderRadius: applyimageredius
                ? BorderRadius.circular(borderredeious)
                : BorderRadius.zero,
            child: Image(
              image: networkimage
                  ? NetworkImage(imageurl)
                  : AssetImage(imageurl) as ImageProvider,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
