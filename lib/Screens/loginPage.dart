import 'package:e_learn/Components/AppText.dart';
import 'package:e_learn/Components/TextFeild.dart';
import 'package:e_learn/Components/buildSocialMediaLogin.dart';
import 'package:e_learn/Components/responsiveButton.dart';
import 'package:e_learn/Controllers/LoginController.dart';
import 'package:e_learn/Core/Data/constant/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            body: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 100.h,
              ),
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 30.h,
                  ),
                  child: Column(
                    children: [
                      AppText(
                        text: "Sign In",
                        fontsize: 30.sp,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AppText(
                        text: "Hi!,Welcome back , You'v been missed",
                        fontsize: 15,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        child: Column(
                          children: [
                            CostumTextFeild(
                              name: "Email",
                              hint: "exemple@gmail.com",
                              prefix: Icons.email_rounded,
                              obscure: false,
                              type: TextInputType.emailAddress,
                              controller: controller.emailController,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            CostumTextFeild(
                              name: "Passsword",
                              hint: ".............",
                              prefix: Icons.lock,
                              show: true,
                              obscure: true,
                              type: TextInputType.visiblePassword,
                              controller: controller.passwordController,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppText(
                      text: "Forgot Password?",
                      fontsize: 13.sp,
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                ResponsiveButton(
                  widget: AppText(
                    text: "Sign in",
                    fontsize: 15.sp,
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  color: Theme.of(context).colorScheme.onSecondary,
                  height: 40.h,
                  width: double.infinity,
                  radius: 20.h,
                  padding: 8.h,
                  function: () {},
                ),
SizedBox(
                  height: 20.h,
                ),
                SocialLoginButton(controller: controller,),
              ],
            ),
          ),
        );
      },
    );
  }
}
