import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tracker/app/helpers/appcolors/appcolors.dart';
import 'package:tracker/app/helpers/styles/buttonstyle.dart';
import 'package:tracker/app/routes/app_pages.dart';

import '../../../../helpers/styles/textstyle.dart';
import '../../../../helpers/whitespaces/sizedboxex.dart';

class ForgotpswdView extends StatelessWidget {
  const ForgotpswdView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
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
                'Create Password',
                style: bigtitleStyle,
              ),
              kHight40,
              //create password
              Row(
                children: [Text('Create Password', style: commonStyle2)],
              ),
              kHight10,
              TextField(
                decoration: InputDecoration(
                    //  labelText: 'Create Password',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPallet.primaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelStyle:
                        TextStyle(color: ColorPallet.grey, fontSize: 13)),
              ),
              //confirm password
              kHight20,
              Row(
                children: [Text('Confirm Password', style: commonStyle2)],
              ),
              kHight10,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorPallet.primaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // labelText: 'Confirm Password',
                  labelStyle: TextStyle(color: ColorPallet.grey, fontSize: 13),
                ),
              ),

              kHight40,
              SizedBox(
                width: screenWidth * 85,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.login);
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: elevatedButtonStyle2,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
