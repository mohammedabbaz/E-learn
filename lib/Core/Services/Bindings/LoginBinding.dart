import 'package:e_learn/Controllers/LoginController.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => LoginController());
  }

}