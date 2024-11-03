import 'package:flutter/material.dart';
import 'package:shop_bd/common/widgets/appbar/custom_appbar.dart';
import 'package:shop_bd/common/widgets/reuse_widgets/counting_card.dart';
import 'package:shop_bd/utils/constant/text_string.dart';

class home_appbar extends StatelessWidget {
  const home_appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextString.homeTitle,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: Colors.white),
          ),
          Text(
            TextString.homeSubtitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
      actions: [
        custom_card_widget(
          onpressed: () {},
        )
      ],
    );
  }
}
