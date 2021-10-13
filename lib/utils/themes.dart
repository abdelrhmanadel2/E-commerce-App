import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/colors.dart';
// import 'package:ecommerce_app/styles/styles.dart';

class Themes {
  static ThemeData get lightTheme {
    return ThemeData(
      // scaffoldBackgroundColor: kBackgroundColor,s
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)))),
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
        ),
      ),
      primaryColor: kWhiteColor,
      backgroundColor: kBackgroundColor,
      accentColor: kBlackColor,
      iconTheme: IconThemeData(color: kGrayColor),
      accentIconTheme: IconThemeData(color: kGrayColor),
      focusColor: kPrimaryColor,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)))),
          backgroundColor: MaterialStateProperty.all(kDarkPrimaryColor),
        ),
      ),

      brightness: Brightness.dark,
      primaryColor: kDarkBackgroundColor,
      accentColor: kDarkWhiteColor,
      // scaffoldBackgroundColor: kDarkBackgroundColor,
      backgroundColor: kDarkBackgroundColor,
      iconTheme: IconThemeData(color: kDarkGrayColor),
      focusColor: kDarkPrimaryColor,
    );
  }
}
