import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tracker/app/helpers/appcolors/appcolors.dart';
import 'package:tracker/app/helpers/styles/buttonstyle.dart';
import 'package:tracker/app/helpers/styles/textstyle.dart';
import 'package:tracker/app/modules/onboarding/model/onboardingmodel.dart';
import 'package:tracker/app/modules/onboarding/views/onboardingscreen2.dart';
import 'package:tracker/app/routes/app_pages.dart';

import '../../../helpers/whitespaces/sizedboxex.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller.pageController,
              onPageChanged: controller.selectedpageIndex,
              itemCount: contents.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'asset/onboard/fisrt.gif', fit: BoxFit.cover,
                            //  'asset/onboard/fisrt.gif'

                            height: screenHeight * 0.5,
                          ),
                          kHight50,
                          // kHight10,
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Text(
                              contents[index].discription,
                              textAlign: TextAlign.center,
                              style: onboardStyle,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SmoothPageIndicator(
                  controller: controller.pageController,
                  count: 2,
                  effect: const ExpandingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: ColorPallet.primaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                  width: 120,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {
                        //controller.forwardAction();
                        Get.to(OnboardingView2());
                      },
                      style: elevatedButtonStyle,
                      child: Text(
                        'Next',
                        style: buttonTextStyle,
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
