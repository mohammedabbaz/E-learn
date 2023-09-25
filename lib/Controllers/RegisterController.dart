import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  bool conditionCheck = false;

  chekcCondition(bool value){
    conditionCheck=value;
    update();
  }
}