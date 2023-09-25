

import 'package:e_learn/Core/Data/constant/Link.dart';
import 'package:e_learn/Core/Services/Global.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MytranslationController extends GetxController {
  Locale? initialLocale = Global.storageServices.getPrefs(AppLinks.lang) == null
      ? Get.deviceLocale
      : const Locale("en");

  void chaangeLang(String langKey) {
    Locale initlang = Locale(langKey);
    Global.storageServices.setPrefs(AppLinks.lang, langKey);
    Get.updateLocale(initlang);
  }
}
