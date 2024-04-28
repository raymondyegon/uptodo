import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData appThemeLight = themeData();

  static const MaterialColor materialColor = MaterialColor(
    0xFF8875FF,
    <int, Color>{
      50: Color.fromRGBO(136, 117, 255, .1),
      100: Color.fromRGBO(136, 117, 255, .2),
      200: Color.fromRGBO(136, 117, 255, .3),
      300: Color.fromRGBO(136, 117, 255, .4),
      400: Color.fromRGBO(136, 117, 255, .5),
      500: Color.fromRGBO(136, 117, 255, .6),
      600: Color.fromRGBO(136, 117, 255, .7),
      700: Color.fromRGBO(136, 117, 255, .8),
      800: Color.fromRGBO(136, 117, 255, .9),
      900: Color.fromRGBO(136, 117, 255, 1),
    },
  );

  static ThemeData themeData() => ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: AppColors.black,
        // brightness: Brightness.dark,
        primaryColor: AppColors.primary,
        primaryColorLight: AppColors.primary,
        primaryColorDark: AppColors.primary,
        canvasColor: const Color(0xfffafafa),
        cardColor: const Color(0xffffffff),
        dividerColor: AppColors.gray,
        highlightColor: AppColors.black2,
        splashColor: AppColors.gray,
        disabledColor: AppColors.lightGray,
        dialogBackgroundColor: AppColors.black2,
        indicatorColor: AppColors.primary,
        hintColor: AppColors.gray,
        textTheme: _textTheme,
        colorScheme: const ColorScheme.light().copyWith(
          primary: AppColors.primary,
          secondary: AppColors.black2,
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            color: AppColors.black2,
            fontSize: 10.0.sp,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          helperStyle: TextStyle(
            color: AppColors.gray,
            fontSize: 10.0.sp,
            fontWeight: FontWeight.w400,
          ),
          hintStyle: TextStyle(
            color: AppColors.gray,
            fontSize: 10.0.sp,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          errorStyle: TextStyle(
            color: AppColors.error,
            fontSize: 10.0.sp,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          errorMaxLines: null,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          isDense: false,
          contentPadding: EdgeInsets.symmetric(horizontal: 3.w),
          isCollapsed: false,
          prefixStyle: const TextStyle(
            color: AppColors.black,
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          suffixStyle: const TextStyle(
            color: AppColors.black,
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          counterStyle: const TextStyle(
            color: AppColors.black,
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          filled: true,
          fillColor: Colors.white38,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.error,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(7),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.error,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(7),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(7),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      );

  static const _bold = FontWeight.w700;
  static const _regular = FontWeight.w400;

  static final TextTheme _textTheme = TextTheme(
    displayLarge: TextStyle(
      color: AppColors.white,
      fontSize: 22.0.sp,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: TextStyle(
      color: AppColors.white,
      fontSize: 20.0.sp,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: TextStyle(
      color: AppColors.white,
      fontSize: 18.0.sp,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      color: AppColors.white,
      fontSize: 16.0.sp,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      color: AppColors.white,
      fontSize: 14.0.sp,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      color: AppColors.white,
      fontSize: 12.0.sp,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      color: AppColors.lightGray,
      fontSize: 10.0.sp,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    titleSmall: TextStyle(
      color: AppColors.black2,
      fontSize: 9.0.sp,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      color: AppColors.black2,
      fontSize: 9.sp,
    ),
    bodyMedium: TextStyle(
      color: AppColors.black2,
      fontSize: 8.0.sp,
      fontWeight: _regular,
      fontStyle: FontStyle.normal,
    ),
    labelLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 11.0.sp,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      color: AppColors.black2,
      fontSize: 8.0.sp,
      fontStyle: FontStyle.normal,
      fontWeight: _regular,
    ),
    labelSmall: TextStyle(
      color: AppColors.black2,
      fontSize: 8.0.sp,
      fontStyle: FontStyle.normal,
      fontWeight: _regular,
    ),
  );
}
