import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static final kTextStyleRegular = TextStyle(
      fontSize: 16.sp,
      fontFamily: kFontFamily,
      color: kBackgroundColor,
      fontWeight: FontWeight.normal);
  static final kTextStyleDescription = extend(
      kTextStyleRegular,
      TextStyle(
        fontSize: 14.sp,
      ));
  static final kTextStyleDescriptive = extend(
      kTextStyleDescription,
      TextStyle(
        fontWeight: FontWeight.w500,
      ));
  static final kTextStyleHelperText = extend(
      kTextStyleRegular,
      TextStyle(
        color: kGrayColor,
        fontSize: 11.sp,
      ));
  static final kTextStyleHeadline = extend(
      kTextStyleRegular,
      TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 34.sp,
      ));
  static final kTextStyleSubheads = extend(
      kTextStyleRegular,
      TextStyle(
        fontWeight: FontWeight.w600,
      ));
  static final kTextStyleHeadline2 = extend(
      kTextStyleSubheads,
      TextStyle(
        fontSize: 24.sp,
      ));
  static final kTextStyleHeadline3 = extend(
      kTextStyleSubheads,
      TextStyle(
        fontSize: 18.sp,
      ));
}
