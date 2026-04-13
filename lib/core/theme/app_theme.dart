import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppColors {
  
  static Color primaryColor = Color(0xffF29C55);         
  static Color secondaryColor = Color(0xffD15A50);      
  
   
  
  // Neutral colors
  static Color textPrimary = Color(0xff1F2937);         // Dark Gray for text
  static Color textSecondary = Color(0xff6B7280);       // Medium Gray
  static Color borderColor = Color(0xffE5E7EB);         // Light Gray for borders
  static Color backgroundColor = Color(0xffF9FAFB);     // Off-white background
}

class MyTextStyles {

  static TextStyle boldTitleText({double? size, Color? color}) {
    return TextStyle(
      fontSize: size ?? 28.sp,
      color: color ?? MyAppColors.primaryColor,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.5,
    );
  }

  static TextStyle subtitleText({double? size, Color? color}) {
    return TextStyle(
      fontSize: size ?? 16.sp,
      color: color ?? MyAppColors.textSecondary,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle bodyText({double? size, Color? color}) {
    return TextStyle(
      fontSize: size ?? 14.sp,
      color: color ?? MyAppColors.textPrimary,
      fontWeight: FontWeight.w400,
    );
  }
}

ThemeData appTheme() {
  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: MyAppColors.primaryColor,
    brightness: Brightness.light,

    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28.sp,
        color: MyAppColors.primaryColor,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.5,
      ),
      headlineMedium: TextStyle(
        fontSize: 22.sp,
        color: MyAppColors.primaryColor,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        color: MyAppColors.textSecondary,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        color: MyAppColors.textPrimary,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 120.w),
        backgroundColor: MyAppColors.primaryColor,
        foregroundColor: Colors.white,
        elevation: 2,
        textStyle: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.3,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: MyAppColors.secondaryColor,
        textStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: MyAppColors.backgroundColor,
      iconColor: MyAppColors.secondaryColor,
      prefixIconColor: MyAppColors.secondaryColor,
      suffixIconColor: MyAppColors.secondaryColor,
      labelStyle: TextStyle(
        color: MyAppColors.textSecondary,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: TextStyle(
        color: MyAppColors.textSecondary,
        fontSize: 14.sp,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: MyAppColors.borderColor, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: MyAppColors.borderColor, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: MyAppColors.primaryColor, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffDC2626), width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffDC2626), width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      errorStyle: TextStyle(
        color: Color(0xffDC2626),
        fontSize: 12.sp,
      ),
    ),

    scaffoldBackgroundColor: Colors.white,
  );
}
