import 'package:e_learn/Core/Data/constant/Color.dart';
import 'package:e_learn/Core/Data/constant/Function.dart';
import 'package:e_learn/Core/Data/constant/Link.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();

    Future.delayed(
      const Duration(milliseconds: 5000),
      () => Get.toNamed(AppLinks.onboarding),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Container(
          alignment: Alignment.center,
          height: double.infinity,
          child: Image(
            image: AssetImage(
              Functions.getImage('logo'),
            ),
            height: 100.h,
            width: 100.h,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
