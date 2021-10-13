import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/styles.dart';

// ignore: avoid_classes_with_only_static_members
class Themes {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: kBackgroundColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(Styles.textTheme.button),
          foregroundColor:
              MaterialStateProperty.all(lightColorScheme.onSecondary),
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)))),
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
        ),
      ),

      primaryColor: kWhiteColor,
      backgroundColor: kBackgroundColor,
      accentColor: kBlackColor,
      iconTheme: const IconThemeData(color: kGrayColor),
      accentIconTheme: const IconThemeData(color: kGrayColor),
      focusColor: kPrimaryColor,
      primaryIconTheme: const IconThemeData(color: kBlackColor),
      textTheme: Styles.textTheme.apply(
          bodyColor: lightColorScheme.onBackground,
          displayColor: lightColorScheme.onBackground),
      // accentTextTheme: Styles.textTheme,
      // primaryTextTheme:
      //     Styles.textTheme.apply(bodyColor: lightColorScheme.onBackground),
      colorScheme: lightColorScheme,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(Styles.textTheme.button),
          foregroundColor:
              MaterialStateProperty.all(darkColorScheme.onSecondary),
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)))),
          backgroundColor: MaterialStateProperty.all(kDarkPrimaryColor),
        ),
      ),
      brightness: Brightness.dark,
      primaryColor: kDarkBackgroundColor,
      accentColor: kDarkWhiteColor,
      scaffoldBackgroundColor: kDarkBackgroundColor,
      backgroundColor: kDarkBackgroundColor,
      iconTheme: const IconThemeData(color: kDarkGrayColor),
      focusColor: kDarkPrimaryColor,
      textTheme: Styles.textTheme.apply(
          bodyColor: darkColorScheme.onBackground,
          displayColor: darkColorScheme.onBackground),
      colorScheme: darkColorScheme,
    );
  }
}
