import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import 'package:shop_bd/common/style/spacing_style.dart';
import 'package:shop_bd/common/widgets/reuse_widgets/devide.dart';
import 'package:shop_bd/common/widgets/reuse_widgets/gg_ff_auth_image.dart';
import 'package:shop_bd/features/authintication/screen/forget_password.dart';
import 'package:shop_bd/features/authintication/screen/sign_up/signup.dart';
import 'package:shop_bd/features/shop/screens/nevigation_menu.dart';
import 'package:shop_bd/utils/constant/image.dart';
import 'package:shop_bd/utils/constant/size.dart';
import 'package:shop_bd/utils/constant/text_string.dart';
import 'package:shop_bd/utils/helper/helper_funtion.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isdark(context);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: SpacingStyle.paddingwithappbar_height,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //heading
                header_for_login(dark: dark),

                //form for login
                form(),

                //divider
                divider(
                  dark: dark,
                  text: 'or sign in with',
                ),
                SizedBox(
                  height: 20,
                ),
                //footter
                footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class header_for_login extends StatelessWidget {
  const header_for_login({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: 70,
        width: 70,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
              image:
                  AssetImage(dark ? images.darkapplogo : images.darkapplogo)),
        ),
      ),

      //title
      Text(
        TextString.loginTitle,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        TextString.loginSubtitle,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      const SizedBox(
        height: 20,
      ),
    ]);
  }
}

class form extends StatelessWidget {
  const form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //email
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
              ),
              labelText: TextString.loginEmailHint,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //password
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.password,
              ),
              labelText: TextString.loginPasswordHint,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(TextString.rememberme),
                ],
              ),

              //forget

              TextButton(
                  onPressed: () {
                    Get.to(() => ForgetPassword());
                  },
                  child: Text(TextString.loginForgotPassword))
            ],
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => NevigationMenu());
                  },
                  child: const Text(TextString.loginButton))),
          SizedBox(
            height: AppSizes.marginMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {
                  Get.to(() => Signup());
                },
                child: const Text(TextString.createaccount)),
          ),
        ],
      ),
    );
  }
}
