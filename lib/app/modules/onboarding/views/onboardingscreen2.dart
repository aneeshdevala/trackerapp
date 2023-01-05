import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tracker/app/helpers/appcolors/appcolors.dart';
import 'package:tracker/app/helpers/styles/buttonstyle.dart';
import 'package:tracker/app/helpers/styles/textstyle.dart';
import 'package:tracker/app/modules/home/views/home_view.dart';
import 'package:tracker/app/modules/onboarding/model/onboardingmodel.dart';
import 'package:tracker/app/routes/app_pages.dart';

import '../../../helpers/whitespaces/sizedboxex.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView2 extends GetView<OnboardingController> {
  const OnboardingView2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          textDirection: TextDirection.ltr,
          //alignment: Alignment.center,
          children: [
            Image.asset(
              'asset/onboard/second.gif',
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            const Positioned(
              bottom: 80,
              child: Padding(
                padding: EdgeInsets.all(40.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,\n sed diam nonumy eirmod tempor invidunt ut labore et\n dolore magna aliquyam erat, sed diam voluptua. At vero\n eos et accusam et justo duo dolores et ea rebum. Stet\n clita kasd gubergren, no sea takimata sanctus est Lorem\n ipsum dolor sit amet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: SmoothPageIndicator(
                  controller: controller.pageController2,
                  count: 2,
                  effect: const ExpandingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: ColorPallet.primaryColor),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {
                        //controller.forwardAction();
                        Get.to(HomeView());
                      },
                      style: elevatedButtonStyle,
                      child: const Text(
                        'Next',
                        style: buttonTextStyle,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
