import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_bd/features/authintication/screen/login_screen.dart';
import 'package:shop_bd/features/authintication/screen/sign_up/succesful_massage.dart';
import 'package:shop_bd/utils/constant/image.dart';
import 'package:shop_bd/utils/constant/size.dart';
import 'package:shop_bd/utils/helper/helper_funtion.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => LoginScreen()),
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(24),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //image
                  Image(
                    image: AssetImage(images.verifiemail),
                    width: HelperFunction.screensize().width * 0.4,
                  ),
                  SizedBox(
                    height: AppSizes.spacebetweenitem,
                  ),
                  Text(
                    'Register email address!',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text("support_hridoy@gmail.com"),
                  Text(
                      " congratulation your gamail is succesfully resister.  "),

                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => SuccesfulMassage(
                                  image: images.verifiemail,
                                  title: ' succesfully varified ',
                                  sub:
                                      'your account is register. login your account ',
                                  onpressed: () {
                                    Get.to(() => LoginScreen());
                                  },
                                ));
                          },
                          child: Text("continue"))),
                  TextButton(onPressed: () {}, child: Text("resend"))
                ],
              ),
            )

            //title

//butoon      ,
            ),
      ),
    );
  }
}
