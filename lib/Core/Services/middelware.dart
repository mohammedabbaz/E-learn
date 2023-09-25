
import 'package:e_learn/Core/Data/constant/Link.dart';
import 'package:e_learn/Core/Services/Global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? priority;

  @override
  RouteSettings? redirect(String? route) {
    return Global.storageServices.checkIsLogin() ?  RouteSettings(name: AppLinks.home):null ;
  }
}
