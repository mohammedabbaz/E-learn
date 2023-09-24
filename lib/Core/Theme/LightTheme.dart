import 'package:e_learn/Core/Data/constant/Color.dart';
import 'package:flutter/material.dart';

ThemeData ligh = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: AppColors.white,
    primary: AppColors.black,
    secondary: AppColors.gray,
    tertiary: AppColors.orange,
    onPrimary: AppColors.white,
    onSecondary: AppColors.blue,
    
  ),
  
);