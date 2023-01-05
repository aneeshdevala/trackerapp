import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:otp_autofill/otp_autofill.dart';

import '../../login/controlller/logincontrollre.dart';

class OtpController extends GetxController {
  final LoginController loginController = Get.put(LoginController());
  RxInt elapsedTime = 60.obs;
  // int _start = 120;

  RxBool enableResend = false.obs;

  String result = '';
  GlobalKey<FormState> otpforgetKey = GlobalKey<FormState>();

  OTPTextEditController otp = OTPTextEditController(codeLength: 4);

  // late final Timer timer;
  String? otpValidator(value) {
    if (value.length == 0) {
      return 'Plese enter otp';
    } else {
      return null;
    }
  }

  RxBool isLoading = false.obs;
  // var token;
  // void resendCode() {
  //   elapsedTime.value = 60;
  //   enableResend.value = false;
  //   startTimer();
  // }

  // startTimer() {
  //   timer = Timer.periodic(const Duration(seconds: 1), (_) {
  //     if (elapsedTime.value != 0) {
  //       elapsedTime.value--;
  //     } else {
  //       enableResend.value = true;
  //     }
  //   });
  // }

  @override
  void onInit() {
    super.onInit();
    OTPInteractor otpInteractor = OTPInteractor();
    otpInteractor
        .getAppSignature()
        //ignore: avoid_print
        .then((value) => print('signature - $value'));

    otp = OTPTextEditController(
        codeLength: 4,
        //ignore: avoid_print
        //  onCodeReceive: (code) => print('Your Application receive code - $code'),
        otpInteractor: otpInteractor,
        onCodeReceive: (code) {
          otp.text = code;
          // callOtp();
        })
      ..startListenUserConsent(
        (code) {
          final exp = RegExp(r'(\d{4})');
          return exp.stringMatch(code ?? '') ?? '';
        },
      );
  }

  @override
  void onClose() {
    // otp.dispose();
    //  timer.cancel();
    super.onClose();
  }

  @override
  void onReady() {
    //  startTimer();
    super.onReady();
  }

  // callOtp() {
  //   Client client = Client();

  //   OtpProvider(client: client.init())
  //       .VerifyOtp(otp.text, _loginController.phone.text);
  // }
}
