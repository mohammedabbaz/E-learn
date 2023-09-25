import 'package:e_learn/Core/Data/constant/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'AppText.dart';

void snackBar(String title, String Body) {
  Get.snackbar("", "",
      borderRadius: 12.h,
      colorText: AppColors.white,
      titleText: Row(
        children: [
          Icon(
            Icons.error_rounded,
            color: AppColors.blue,
            size: 20.h,
          ),
          SizedBox(
            width: 10.h,
          ),
          AppText(
              text: title,
              fontsize: 13.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.blue,
              overFlow: TextOverflow.clip),
        ],
      ),
      messageText: AppText(
          text: Body,
          fontsize: 12.sp,
          fontWeight: FontWeight.normal,
          color: AppColors.black,
          overFlow: TextOverflow.visible),
      margin: EdgeInsets.all(20.h),
      padding: EdgeInsets.all(20.h));
}
