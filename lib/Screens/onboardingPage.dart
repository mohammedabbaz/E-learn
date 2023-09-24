import 'package:e_learn/Components/responsiveButton.dart';
import 'package:e_learn/Controllers/OnboardingController.dart';
import 'package:e_learn/Core/Data/constant/Function.dart';
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
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.only(bottom: 40.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            //page
            PageView.builder(
              onPageChanged: (value) {
                controller.jumpTo(value);
              },
            
              controller:controller.pageController,
              itemCount: controller.pages.length,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 30.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      // image
                      Functions.getImage(
                        controller.pages[index][0],
                      ),
                      color: Colors.amber,
                      height: 100.h,
                      width: 100.h,
                    ),
                    // title
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
                padding: EdgeInsets.symmetric(horizontal: 25.h ,vertical: 40.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ResponsiveButton(
                      widget: Icon(Icons.arrow_back_ios_new_rounded,color: Theme.of(context).colorScheme.onPrimary,size: 15.h,),
                      function: () {
                         controller.jumpTo(controller.index--);
                      },
                      color: Theme.of(context).colorScheme.onSecondary,
                      height: 40.h,
                      width: 40.h,
                      radius: 50.h,
                      padding: 10.h,
                    ),
                    SmoothPageIndicator(
                      controller: controller.pageController, // PageController
                      count: controller.pages.length,
                      effect: WormEffect(
                        dotHeight: 8.h,
                        dotWidth: 8.h,
                        activeDotColor: Theme.of(context).colorScheme.tertiary,
                      ), // your preferred effect
                      onDotClicked: (index) {
                        controller.jumpTo(index);
                      },
                    ),
                       ResponsiveButton(
                      widget: Icon(Icons.arrow_forward_ios_rounded,color: Theme.of(context).colorScheme.onPrimary,size: 15.h,),
                       function: () {
                        controller.jumpTo(controller.index++);
                      },
                      color: Theme.of(context).colorScheme.onSecondary,
                      height: 40.h,
                      width: 40.h,
                      radius: 50.h,
                      padding: 10.h,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
