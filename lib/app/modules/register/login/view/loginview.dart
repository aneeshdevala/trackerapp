import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tracker/app/helpers/appcolors/appcolors.dart';
import 'package:tracker/app/helpers/styles/buttonstyle.dart';
import 'package:tracker/app/helpers/styles/textstyle.dart';
import 'package:tracker/app/helpers/whitespaces/sizedboxex.dart';
import 'package:tracker/app/modules/register/login/view/forgetpassword.dart';

import '../../../../routes/app_pages.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/images/logo.png'),
              kHight40,
              const Text(
                'Welcome Back !',
                style: bigtitleStyle,
              ),
              kHight10,
              Text(
                'Sign in to get started and experience\n great shopping deals',
                style: commonStyle,
                textAlign: TextAlign.center,
              ),
              kHight20,
              //username
              TextField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle:
                        TextStyle(color: ColorPallet.grey, fontSize: 13)),
              ),
              //password
              kHight10,
              TextField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle:
                        TextStyle(color: ColorPallet.grey, fontSize: 13)),
              ),
              kHight40,
              SizedBox(
                width: screenWidth * 85,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login'),
                  style: elevatedButtonStyle2,
                ),
              ),
              kHight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (() {
                      Get.to(ForgotpswdView());
                    }),
                    child: const Text(
                      'Forgot Password?',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: ColorPallet.primaryColor),
                    ),
                  ),
                ],
              ),
              kHight20,
              Orwidget(screenWidth: screenWidth),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('asset/images/google 1.png'),
                  kwidth20,
                  Image.asset('asset/images/facebook circle.png')
                ],
              ),
              kHight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Not have an account? '),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.signup);
                    },
                    child: const Text(
                      'SIGNUP',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: ColorPallet.primaryColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

class Orwidget extends StatelessWidget {
  const Orwidget({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 1,
          width: screenWidth * 0.37,
          color: ColorPallet.primaryColor,
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text('OR'),
        ),
        Container(
          height: 1,
          width: screenWidth * 0.37,
          color: ColorPallet.primaryColor,
        ),
      ],
    );
  }
}
