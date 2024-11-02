import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_bd/features/authintication/screen/reset_password_page.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Padding(
        padding: const EdgeInsets.only(top: 200, right: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "forget password!",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(
                  height: 10,
                ),

                //heading
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'enter your email'),
                ),

                //button
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.off(() => ResetPasswordPage());
                },
                child: Text("submit"))
          ],
        ),
      ),
    );
  }
}
