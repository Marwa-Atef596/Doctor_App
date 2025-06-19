import 'package:doctor_app/core/theming/color_app.dart';
import 'package:doctor_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorApp.mainBlue,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    color: ColorApp.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font16WhiteMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );
  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    color: ColorApp.grey,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorApp.lightGray,
  );
  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorApp.darkBlue,
  );
  static TextStyle font13BlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorApp.mainBlue,
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorApp.darkBlue,
  );
  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorApp.mainBlue,
  );
  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorApp.grey,
  );
}
