import 'package:e_learn/Controllers/RegisterController.dart';
import 'package:get/get.dart';

class RegisterBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => RegisterController());
  }

}