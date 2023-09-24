import 'package:e_learn/Controllers/OnboardingController.dart';
import 'package:get/get.dart';

class OnboardingBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
  }

}