import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracker/app/helpers/styles/buttonstyle.dart';
import 'package:tracker/app/helpers/whitespaces/sizedboxex.dart';
import 'package:tracker/app/routes/app_pages.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //  final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/images/logo.png'),
              kHight50,
              const Text(
                'loreum ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam .',
                textAlign: TextAlign.center,
              ),
              kHight50,
              kHight20,
              SizedBox(
                height: 50,
                width: screenWidth * 0.85,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.login);
                  },
                  style: elevatedButtonStyle2,
                  child: const Text('Login'),
                ),
              ),
              kHight10,
              kHight20,
              SizedBox(
                height: 50,
                width: screenWidth * 0.85,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.signup);
                  },
                  style: elevatedButtonStyle2,
                  child: const Text('Sign Up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
