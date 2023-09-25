import 'package:e_learn/Components/responsiveButton.dart';
import 'package:e_learn/Controllers/OnboardingController.dart';
import 'package:e_learn/Core/Data/constant/Function.dart';
import 'package:e_learn/Core/Data/constant/Link.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:e_learn/Components/AppText.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<OnboardingController>(builder: (controller) {
        return Scaffold(
            body: Padding(
          padding: EdgeInsets.only(bottom: 40.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              //page
              PageView.builder(
                onPageChanged: (value) {
                  controller.onpageChange(value);
                },
                controller: controller.pageController,
                itemCount: controller.pages.length,
                itemBuilder: (context, index) => Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.h, vertical: 10.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        // image
                        Functions.getImage(
                          controller.pages[index][0],
                        ),

                        height: 300.h,
                        width: 300.h,
                      ),
                      // title
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AppText(
                              text: controller.pages[index][1],
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                              fontsize: 25.sp,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            AppText(
                              text: controller.pages[index][2],
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w500,
                              fontsize: 12.sp,
                              maxLines: 3,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // smoot and button
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.h, vertical: 40.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ResponsiveButton(
                        widget: Text("Skip",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 15.h,
                            )),
                        function: () {
                          controller.pageController.jumpToPage(2);
                        },
                        color: Theme.of(context).colorScheme.onSecondary,
                        height: 40.h,
                        width: 60.h,
                        radius: 50.h,
                        padding: 10.h,
                      ),
                      SmoothPageIndicator(
                        controller: controller.pageController, // PageController
                        count: controller.pages.length,
                        effect: WormEffect(
                          dotHeight: 8.h,
                          dotWidth: 8.h,
                          activeDotColor:
                              Theme.of(context).colorScheme.tertiary,
                        ), // your preferred effect
                        onDotClicked: (index) {
                          controller.pageController.animateToPage(index,
                              duration: const Duration(microseconds: 100),
                              curve: Curves.easeIn);
                        },
                      ),
                      controller.inLastPage
                          ? ResponsiveButton(
                              widget: Text("Done",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 15.h,
                                  )),
                              function: () {
                                Get.offAllNamed(AppLinks.login);
                              },
                              color: Theme.of(context).colorScheme.onSecondary,
                              height: 40.h,
                              width: 60.h,
                              radius: 50.h,
                              padding: 10.h,
                            )
                          : ResponsiveButton(
                              widget: Text("Next",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 15.h,
                                  )),
                              function: () {
                                controller.pageController.nextPage(
                                    duration: const Duration(microseconds: 100),
                                    curve: Curves.easeIn);
                              },
                              color: Theme.of(context).colorScheme.onSecondary,
                              height: 40.h,
                              width: 60.h,
                              radius: 50.h,
                              padding: 10.h,
                            ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
      }),
    );
  }
}
