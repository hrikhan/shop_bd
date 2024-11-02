import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_bd/features/authintication/screen/login_screen.dart';
import 'package:shop_bd/features/authintication/screen/sign_up/succesful_massage.dart';
import 'package:shop_bd/utils/constant/image.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SuccesfulMassage(
        image: images.onboard1,
        title: "password resent email sent",
        sub: 'please go to the email box and set your passwordS',
        onpressed: () {
          Get.to(() => LoginScreen());
        },
        resend: 'resend email',
        textonpressed: () {},
      ),
    );
  }
}
