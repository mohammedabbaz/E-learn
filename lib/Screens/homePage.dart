import 'package:e_learn/Components/AppText.dart';
import 'package:e_learn/Components/responsiveButton.dart';
import 'package:e_learn/Core/Data/constant/Color.dart';
import 'package:e_learn/Core/Data/constant/Function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          toolbarHeight: 55.h,
          title: Container(
            margin: EdgeInsets.only(
                top: 15.h, left: 10.h, right: 10.h, bottom: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // name
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              Functions.getImage("onboarding2"),
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                      AppText(
                        text: "Hello Mohammed! ",
                        fontsize: 15.sp,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),

                // notification
                Row(
                  children: [
                    ResponsiveButton(
                      widget: Center(
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                height: 6.h,
                                width: 6.h,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Image.asset(
                              Functions.getIcon('bag'),
                              height: 20.h,
                              width: 20.h,
                              color: Get.isDarkMode ? AppColors.white : null,
                            ),
                          ],
                        ),
                      ),
                      color: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.2),
                      height: 35.h,
                      width: 35.h,
                      radius: 50.h,
                      padding: 0.h,
                      function: () {},
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    ResponsiveButton(
                      widget: Center(
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                height: 6.h,
                                width: 6.h,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Image.asset(
                              Functions.getIcon('notification'),
                              height: 20.h,
                              width: 20.h,
                              color: Get.isDarkMode ? AppColors.white : null,
                            ),
                          ],
                        ),
                      ),
                      color: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.2),
                      height: 35.h,
                      width: 35.h,
                      radius: 50.h,
                      padding: 0.h,
                      function: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 25.h, vertical: 20.h),
          child: ListView(
            children: [
              // search
              TextFormField(
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 12.sp,
                  fontFamily: "Simple",
                ),
                enableSuggestions: false,
                keyboardType: TextInputType.text,
                cursorColor: Theme.of(context).colorScheme.onSecondary,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.h),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.1),
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.h),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.1),
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 15.w, left: 10.w),
                      child: Image.asset(
                        Functions.getIcon('search'),
                        height: 25.h,
                        width: 25.h,
                        color: Get.isDarkMode ? AppColors.white : null,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(
                      top: 5.h,
                      bottom: 5.h,
                      right: 6.h,
                      left: 10.h,
                    ),
                    hintText: "Search course or mentors",
                    hintStyle: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 12.sp,
                      fontFamily: "Simple",
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.h),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.1),
                      ),
                    ),
                    fillColor: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.1),
                    filled: true,
                    suffixIconColor: Theme.of(context).colorScheme.primary,
                    suffixIcon: GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          Functions.getIcon('filter'),
                          height: 10.h,
                          width: 10.h,
                          color: Get.isDarkMode ? AppColors.white : null,
                        ),
                      ),
                    )),
              ),
              // categories
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 33.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(right: 10.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 3.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.h),
                      border: Border.all(
                        color: AppColors.blue,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Center(
                      child: AppText(
                        text: "categorie",
                        fontsize: 15.sp,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ),
              )
              // pupolar course

              ,
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Popular Courses",
                    fontsize: 13.sp,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  GestureDetector(
                    child: AppText(
                      text: "See All",
                      fontsize: 13.sp,
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),

              SizedBox(
                height: 170.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    width: 150.w,
                    margin: EdgeInsets.only(right: 10.h),
                    // padding:
                    //     EdgeInsets.symmetric(horizontal: 5.h, vertical: 10.h),
                   
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.h),
                      color:  Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.1)
                          ,
                    ),
                    child: Column(
                      children: [
                        // image
                        Flexible(
                          flex: 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.h),
                            child: Image.asset(
                              Functions.getImage("onboarding1"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        // details
                        Flexible(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.all(5.h),
                            margin: EdgeInsets.only(top: 10.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AppText(
                                  text: "Design  Courses for Design  sssssssssssss  ",
                                  maxLines: 2,
                                  fontsize: 12.sp,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppText(
                                      text: "mohamed abbaz  ",
                                      fontsize: 10.sp,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),

                                    // review
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_rate_rounded,
                                          color: Colors.yellowAccent,
                                          size: 10.h,
                                        ),
                                        AppText(
                                          text: "4.5(1200) ",
                                          fontsize: 9.sp,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                                // price
                                ,
                                Row(
                                  children: [
                                    AppText(
                                      text: "dolar ${20} ",
                                      fontsize: 13.sp,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    AppText(
                                      text: "25 ",
                                      fontsize: 9.sp,
                                      color: Colors.red,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
