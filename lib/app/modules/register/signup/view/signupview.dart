import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:tracker/app/helpers/appcolors/appcolors.dart';
import 'package:tracker/app/helpers/styles/buttonstyle.dart';
import 'package:tracker/app/helpers/styles/textstyle.dart';
import 'package:tracker/app/helpers/whitespaces/sizedboxex.dart';
import 'package:tracker/app/modules/register/login/view/loginview.dart';
import 'package:tracker/app/modules/register/signup/view/otpscreen.dart';
import 'package:tracker/app/routes/app_pages.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/images/logo.png'),
            kHight20,
            const Text(
              'Hello there !',
              style: bigtitleStyle,
            ),
            kHight10,
            Text(
              'Create Your Account',
              style: commonStyle,
            ),
            kHight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  ' Mobile No:',
                  style:
                      TextStyle(fontSize: 12, color: ColorPallet.primaryColor),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorPallet.primaryColor,
                  ),
                  color: ColorPallet.kcwhite,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: ColorPallet.primaryColor,
                      spreadRadius: 0,
                      blurRadius: 1,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    InternationalPhoneNumberInput(
                        onInputChanged: (value) {},
                        initialValue: PhoneNumber(isoCode: 'IN'),
                        cursorColor: Colors.black,
                        formatInput: false,
                        selectorConfig: const SelectorConfig(
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        ),
                        inputDecoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter mobile number',
                          hintStyle: TextStyle(
                            color: ColorPallet.kcblack.withOpacity(0.5),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                    Positioned(
                        left: 80,
                        top: 10,
                        bottom: 10,
                        child: Container(
                          height: 20,
                          width: 1,
                          color: ColorPallet.kcblack,
                        ))
                  ],
                ),
              ),
            ),
            kHight40,
            SizedBox(
              width: screenWidth * 85,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(OtpView());
                  },
                  style: elevatedButtonStyle2,
                  child: const Text(
                    'Next',
                    style: TextStyle(color: ColorPallet.kcwhite),
                  )),
            ),
            kHight40,
            Orwidget(screenWidth: screenWidth),
            kHight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('asset/images/google 1.png'),
                kwidth20,
                Image.asset('asset/images/facebook circle.png')
              ],
            ),
            kHight40,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not have an account? '),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.login);
                  },
                  child: const Text(
                    'Login',
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
    );
  }
}
