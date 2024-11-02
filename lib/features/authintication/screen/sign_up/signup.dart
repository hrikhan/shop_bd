import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_bd/common/widgets/reuse_widgets/devide.dart';
import 'package:shop_bd/common/widgets/reuse_widgets/gg_ff_auth_image.dart';
import 'package:shop_bd/features/authintication/screen/sign_up/verify_email.dart';
import 'package:shop_bd/utils/constant/size.dart';

import 'package:shop_bd/utils/constant/text_string.dart';
import 'package:shop_bd/utils/helper/helper_funtion.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isdark(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              Text(
                TextString.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 20,
              ),

              //form
              Form(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            expands: false,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.man),
                                labelText: 'firstname'),
                          ),
                        ),
                        SizedBox(
                          width: AppSizes.spacebetweenitem,
                        ),
                        Expanded(
                          child: TextField(
                            expands: false,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.man_2),
                                labelText: 'lastame'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppSizes.spacebetweenitem,
                    ),
                    //username
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.abc), labelText: 'username'),
                    ),
                    SizedBox(
                      height: AppSizes.spacebetweenitem,
                    ),
                    //phone number
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.numbers),
                          labelText: 'phone number'),
                    ),
                    SizedBox(
                      height: AppSizes.spacebetweenitem,
                    ),

                    //email
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email), labelText: 'email'),
                    ),
                    SizedBox(
                      height: AppSizes.spacebetweenitem,
                    ),
                    //password
                    TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.hide_source),
                          prefixIcon: Icon(Icons.password),
                          labelText: 'password'),
                    ),
                    SizedBox(
                      height: AppSizes.spacebetweenitem,
                    ),
                    //term_condition_cheakbox

                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (context) {},
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(text: 'i agree to '),
                            TextSpan(
                              text: '${TextString.privacy}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue),
                            ),
                          ]),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: AppSizes.spacebetweenitem,
                    ),
                    //signup-button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => VerifyEmail());
                        },
                        child: Text(TextString.signUpButton),
                      ),
                    ),
                    //fotter
                    divider(dark: dark, text: "or sign up with"),

                    //gap
                    SizedBox(
                      height: AppSizes.spacebetweenitem,
                    ),
                    //fotter
                    footer()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
