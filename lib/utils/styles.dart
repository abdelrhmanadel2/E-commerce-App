import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static final kTextStyleRegular = TextStyle(
      fontSize: 16.sp, fontFamily: kFontFamily, fontWeight: FontWeight.normal);
  static final kTextStyleDescription = extend(
      kTextStyleRegular,
      TextStyle(
        fontSize: 14.sp,
      ));
  static final kTextStyleDescriptive = extend(
      kTextStyleDescription,
      const TextStyle(
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
      const TextStyle(
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

  static final TextTheme textTheme = TextTheme(
    headline1: kTextStyleHeadline,
    headline2: kTextStyleHeadline2,
    headline6: kTextStyleHeadline3,
    subtitle1: kTextStyleSubheads,
    button: kTextStyleDescriptive,
    caption: kTextStyleHelperText,
    overline: kTextStyleHelperText,
    bodyText1: kTextStyleRegular,
    bodyText2: kTextStyleDescription,
  );
}
