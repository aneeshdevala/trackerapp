import 'package:get/get.dart';
import 'package:tracker/app/modules/onboarding/views/onboardingscreen2.dart';
import 'package:tracker/app/modules/register/login/startpage.dart';
import 'package:tracker/app/modules/register/login/view/loginview.dart';
import 'package:tracker/app/modules/register/signup/view/signupview.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.StartPage,
      page: () => const StartPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
      //binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING2,
      page: () => const OnboardingView2(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 700),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.signup,
      page: () => const SignUpView(),
      binding: HomeBinding(),
    ),
  ];
}
