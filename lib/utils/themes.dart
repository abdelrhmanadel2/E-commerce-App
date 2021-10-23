import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: avoid_classes_with_only_static_members
class Themes {
  static ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      // textButtonTheme: TextButtonThemeData(
      //     style: ButtonStyle(
      //   shadowColor:
      //       MaterialStateProperty.all(const Color.fromRGBO(211, 38, 38, 0.25)),
      //   textStyle: MaterialStateProperty.all(Styles.textTheme.button!
      //       .apply(color: darkColorScheme.onBackground)),
      //   foregroundColor:
      //       MaterialStateProperty.all(lightColorScheme.onBackground),
      // )),
      indicatorColor: kSuccessColor,
      dividerColor: kGrayColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(10),
          shadowColor: MaterialStateProperty.all(
              const Color.fromRGBO(211, 38, 38, 0.25)),
          textStyle: MaterialStateProperty.all(Styles.textTheme.button!
              .apply(color: lightColorScheme.onSecondary)),
          foregroundColor:
              MaterialStateProperty.all(lightColorScheme.onSecondary),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0.r)))),
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(lightColorScheme.onSurface),
        side: MaterialStateProperty.all(
            BorderSide(color: lightColorScheme.onSurface)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0.r)))),
      )),
      scaffoldBackgroundColor: kBackgroundColor,
      primaryColor: kWhiteColor,
      backgroundColor: kBackgroundColor,
      accentColor: kBlackColor,
      appBarTheme: const AppBarTheme(backgroundColor: kBackgroundColor),
      hintColor: kGrayColor,
      iconTheme: const IconThemeData(color: kGrayColor),
      accentIconTheme: const IconThemeData(color: kPrimaryColor),
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
    return ThemeData.dark().copyWith(
      // textButtonTheme: TextButtonThemeData(
      //   style: ButtonStyle(
      //     elevation: MaterialStateProperty.all(15),
      //     shadowColor: MaterialStateProperty.all(
      //         const Color.fromRGBO(211, 38, 38, 0.25)),
      //     textStyle: MaterialStateProperty.all(Styles.textTheme.button!
      //         .apply(color: darkColorScheme.onSecondary)),
      //     foregroundColor:
      //         MaterialStateProperty.all(darkColorScheme.onSecondary),
      //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
      //         borderRadius: BorderRadius.all(Radius.circular(25.0.r)))),
      //   ),
      // ),
      dividerColor: kDarkGrayColor,
      hintColor: kDarkGrayColor,
      indicatorColor: kDarkSuccessColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(10),
          shadowColor: MaterialStateProperty.all(
              const Color.fromRGBO(211, 38, 38, 0.25)),
          textStyle: MaterialStateProperty.all(Styles.textTheme.button!
              .apply(color: darkColorScheme.onSecondary)),
          foregroundColor:
              MaterialStateProperty.all(darkColorScheme.onSecondary),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0.r)))),
          backgroundColor: MaterialStateProperty.all(kDarkPrimaryColor),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(darkColorScheme.onSurface),
        side: MaterialStateProperty.all(
            BorderSide(color: darkColorScheme.onSurface)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0.r)))),
      )),
      appBarTheme: const AppBarTheme(backgroundColor: kDarkBackgroundColor),

      brightness: Brightness.dark,
      primaryColor: kDarkBackgroundColor,
      accentColor: kDarkWhiteColor,
      scaffoldBackgroundColor: kDarkBackgroundColor,
      backgroundColor: kDarkBackgroundColor,

      // iconTheme: const IconThemeData(opacity: 1, color: kErrorColor),
      primaryIconTheme: const IconThemeData(opacity: 1, color: kDarkWhiteColor),
      accentIconTheme: const IconThemeData(opacity: 1, color: kPrimaryColor),
      focusColor: kDarkWhiteColor,
      textTheme: Styles.textTheme.apply(
          bodyColor: darkColorScheme.onBackground,
          displayColor: darkColorScheme.onBackground),
      colorScheme: darkColorScheme,
    );
  }
}
