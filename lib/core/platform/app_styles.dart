import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle textStyleTextButton() => TextStyle(
        fontSize: 12.sp,
        color: AppColors.white,
      );

  static TextStyle textStyleTitle() => TextStyle(
        fontSize: 20.sp,
        color: AppColors.white,
        fontWeight: FontWeight.w700,
      );

  static TextStyle textStyleAppBar() => TextStyle(
        fontSize: 13.sp,
        color: AppColors.white,
        fontWeight: FontWeight.w700,
      );

  static TextStyle textStyleBodyTitle() => TextStyle(
        fontSize: 14.sp,
        color: AppColors.white,
        fontWeight: FontWeight.w600,
      );

  static TextStyle textStyleBodyLarge() => TextStyle(
        fontSize: 12.sp,
        color: AppColors.white,
        fontWeight: FontWeight.normal,
      );

  static TextStyle textStyleBodyMedium() => TextStyle(
        fontSize: 10.sp,
        color: AppColors.white,
        fontWeight: FontWeight.normal,
      );

  static TextStyle textStyleBodySmall() => TextStyle(
        fontSize: 9.sp,
        color: AppColors.white,
        fontWeight: FontWeight.normal,
      );

  static TextStyle textStyleHint() => TextStyle(
        fontSize: 9.sp,
        color: AppColors.white,
        fontWeight: FontWeight.normal,
      );
}
