import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracker/app/modules/onboarding/model/onboardingmodel.dart';
import 'package:tracker/app/routes/app_pages.dart';

class OnboardingController extends GetxController {
  //TODO: Implement OnboardingController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
    var selectedpageIndex = 0.obs;
  final PageController pageController = PageController(initialPage: 0);
  final PageController pageController2 = PageController(initialPage: 1);
  bool get isLastpage => selectedpageIndex.value == contents.length - 1;

  forwardAction() {
    if (isLastpage) {
      //go to Home
      Get.offNamed(Routes.HOME);
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }
}
