import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/core/colors/colors_manager.dart';

class TextStyling {
  static TextStyle black700size30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );
  static TextStyle black700size24 = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: Colors.black
  );
  static TextStyle blue700size32 = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w700,
      color: ColorsManager.primaryColor,
  );
  static TextStyle blue700size24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.primaryColor,
  );
  static TextStyle blue400size12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.primaryColor,
  );
  static TextStyle white600size16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static TextStyle gray400size14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.darkGrey,
  );
  static TextStyle gray400size12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.darkGrey,
  );
  static TextStyle black400size12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.shadeOfBlack,
  );

  static TextStyle gray400size11 = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.lightgray,
  );
}