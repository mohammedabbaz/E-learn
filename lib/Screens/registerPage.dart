import 'package:e_learn/Components/AppText.dart';
import 'package:e_learn/Components/TextFeild.dart';
import 'package:e_learn/Components/buildSocialMediaLogin.dart';
import 'package:e_learn/Components/responsiveButton.dart';
import 'package:e_learn/Controllers/RegisterController.dart';
import 'package:e_learn/Core/Data/constant/Color.dart';
import 'package:e_learn/Core/Data/constant/Link.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            body: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 50.h,
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
                        text: "Create Account",
                        fontsize: 20.sp,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AppText(
                        text:
                            "Fill your information below ou register with your social account",
                        fontsize: 12.sp,
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
                              name: "Name",
                              hint: "your name",
                              prefix: Icons.person_2_rounded,
                              obscure: false,
                              type: TextInputType.name,
                              controller: controller.nameController,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      
                      activeColor: Theme.of(context).colorScheme.onSecondary,
                      checkColor: Theme.of(context).colorScheme.background,
                      value: controller.conditionCheck,
                      onChanged: (value) {
                        controller.chekcCondition(value!);
                      },
                    ),
                    AppText(
                      text: "Agree with",
                      fontsize: 12.sp,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(
                      width: 3.h,
                    ),
                    AppText(
                      text: "Terms & conditons",
                      fontsize: 13.sp,
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                ResponsiveButton(
                  widget: AppText(
                    text: "Sign up",
                    fontsize: 15.sp,
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  color: Theme.of(context).colorScheme.onSecondary,
                  height: 40.h,
                  width: double.infinity,
                  radius: 15.h,
                  padding: 8.h,
                  function: () {},
                ),
                SizedBox(
                  height: 20.h,
                ),
                SocialLoginButton(
                  controller: Get.find(),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: "Already have an account ?",
                      fontsize: 12.sp,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppLinks.login);
                      },
                      child: AppText(
                        text: "Sign in",
                        fontsize: 13.sp,
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
