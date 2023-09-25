import 'package:e_learn/Core/Data/constant/Link.dart';
import 'package:e_learn/Core/Services/Bindings/LoginBinding.dart';
import 'package:e_learn/Core/Services/Bindings/OnboardingBinding.dart';
import 'package:e_learn/Screens/homePage.dart';
import 'package:e_learn/Screens/loginPage.dart';
import 'package:e_learn/Screens/onboardingPage.dart';
import 'package:e_learn/Screens/registerPage.dart';
import 'package:e_learn/Screens/splashScreen.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> pages= [
        GetPage(name: AppLinks.splash, page: () => const SplashScreen()),
        GetPage(name: AppLinks.home, page: () => const HomePage()),
        GetPage(name: AppLinks.login, page: () => const LoginPage(),binding: LoginBinding()),
        GetPage(name: AppLinks.register, page: () => const RegisterPage()),
        GetPage(name: AppLinks.onboarding, page: () => const OnboardingPage(),binding: OnboardingBinding()),

      ];