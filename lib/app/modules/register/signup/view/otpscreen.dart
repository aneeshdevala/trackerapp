import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tracker/app/helpers/appcolors/appcolors.dart';
import 'package:tracker/app/helpers/styles/buttonstyle.dart';

import 'package:tracker/app/helpers/styles/textstyle.dart';
import 'package:tracker/app/helpers/whitespaces/sizedboxex.dart';
import 'package:tracker/app/modules/register/login/view/forgetpassword.dart';
import 'package:tracker/app/modules/register/signup/controller/otpcontroller.dart';

class OtpView extends GetView {
  OtpView({super.key});
  final OtpController _otpController = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/images/logo.png'),
              kHight40,
              const Text('Enter Verification Code', style: title2Style),
              kHight20,
              Text(
                'Enter the 4 digit code that send to\n your mobile',
                textAlign: TextAlign.center,
                style: commonStyle2,
              ),
              kHight40,
              SizedBox(
                height: 50,
                width: screenwidth * 0.7,
                child: PinCodeTextField(
                  enablePinAutofill: true,
                  appContext: context,
                  controller: _otpController.otp,
                  length: 4,
                  onChanged: (value) => _otpController.otp,
                  keyboardType: TextInputType.number,
                  cursorColor: ColorPallet.primaryColor,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    selectedColor: ColorPallet.primaryColor,
                    inactiveColor: ColorPallet.grey,
                    //   disabledColor: clrBgGrey,
                    activeColor: ColorPallet.primaryColor,
                    fieldWidth: 45,
                    fieldHeight: 45,
                    borderWidth: 1,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              kHight40,
              SizedBox(
                height: 50,
                width: screenwidth * 0.85,
                child: ElevatedButton(
                    onPressed: () {
                      _otpController.otpValidator(
                          _otpController.otp.text.toString().trim());
                      Get.to(ForgotpswdView());
                    },
                    style: elevatedButtonStyle2,
                    child: const Text('Verify')),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Do not receive Code?',
                    style: TextStyle(
                        color: ColorPallet.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Obx(
                    () => TextButton(
                      onPressed: () {
                        // if (_otpController.enableResend.value) {
                        //   _otpController.resendCode();
                        // } else {
                        //   Helper().getCustomSnackbar(
                        //       msg: "Please wait...", subtitle: "");
                        // }
                      },
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(
                              _otpController.enableResend.value
                                  ? const Color(0xff2B6777)
                                  : ColorPallet.grey)),
                      child: const Text(
                        'Resend it',
                        style: TextStyle(
                            color: Color(0xff2B6777),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
