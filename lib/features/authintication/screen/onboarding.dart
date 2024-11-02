import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_bd/features/authintication/controllers/onboarding_controller.dart';
import 'package:shop_bd/utils/constant/image.dart';
import 'package:shop_bd/utils/constant/size.dart';
import 'package:shop_bd/utils/constant/text_string.dart';
import 'package:shop_bd/utils/helper/helper_funtion.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controllar = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          //horizontal page view

          PageView(
              controller: controllar.pageController,
              onPageChanged: controllar.pageindicator,
              children: const [
                onboarding_widgets(
                  image: images.onboard1,
                  title: TextString.onboardingSubtitle1,
                  subtitle: TextString.onboardingSubtitle1,
                ),
                onboarding_widgets(
                  image: images.onboard2,
                  title: TextString.onboardingTitle2,
                  subtitle: TextString.onboardingSubtitle2,
                ),
                onboarding_widgets(
                  image: images.onboard3,
                  title: TextString.onboardingTitle3,
                  subtitle: TextString.onboardingSubtitle3,
                )
              ]),

          //skip button
          skip(),

          //dot
          dot_button(),

          //circular button
          const circular_button()
        ],
      ),
    );
  }
}

//for onboarding button
class onboarding_widgets extends StatelessWidget {
  const onboarding_widgets(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Container(
            height: 500,
            width: HelperFunction.screensize().width * .9,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              child: Image(
                width: HelperFunction.screensize().width * .9,
                height: HelperFunction.screensize().height * .7,
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: AppSizes.spacebetweenitem,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

//for skip button
class skip extends StatelessWidget {
  const skip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 29,
        right: 24,
        child: TextButton(
            onPressed: () {
              OnboardingController.intance.skippage();
            },
            child: Text(
              "skip",
              style: TextStyle(fontSize: 20, color: Colors.red),
            )));
  }
}

//cicular button
class circular_button extends StatelessWidget {
  const circular_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isdark(context);
    return Positioned(
        right: 29,
        bottom: 24,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: dark ? Colors.white : Colors.black,
                iconColor: Colors.red),
            onPressed: () {
              return OnboardingController.intance.nextpage();
            },
            child: Icon(Icons.arrow_circle_right)));
  }
}

//dotbutton widgets
class dot_button extends StatelessWidget {
  const dot_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controllar = OnboardingController.intance;
    final dark = HelperFunction.isdark(context);
    return Positioned(
        left: 35,
        bottom: 35,
        child: SmoothPageIndicator(
          controller: controllar.pageController,
          onDotClicked: controllar.dotcount,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? Colors.red : Colors.redAccent,
              dotHeight: 6),
        ));
  }
}
