import 'package:e_learn/Core/Data/constant/Color.dart';
import 'package:flutter/material.dart';

ThemeData dark=ThemeData(
  brightness: Brightness.dark,
 colorScheme: const ColorScheme.dark(
    background: AppColors.black,
    primary: AppColors.white,
    secondary: AppColors.gray,
    tertiary: AppColors.orange,
    onPrimary: AppColors.white,
    onSecondary: AppColors.blue,
    
  ),
);