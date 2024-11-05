import 'package:flutter/material.dart';
import 'package:shop_bd/utils/helper/helper_funtion.dart';

class ccicle_container_with_text extends StatelessWidget {
  const ccicle_container_with_text({
    super.key,
    required this.image,
    required this.title,
    this.textcolour = Colors.white,
    this.background_color = Colors.white,
    this.onpressed,
  });
  final String image, title;
  final Color? textcolour;
  final Color? background_color;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isdark(context);
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: GestureDetector(
        onDoubleTap: onpressed,
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: background_color ?? (dark ? Colors.black : Colors.white),
              ),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 52,
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}
