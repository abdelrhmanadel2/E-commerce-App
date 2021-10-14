import 'package:flutter/material.dart';

final String kFontFamily = "Metropolis";
const Color kPrimaryColor = Color(0xFFDB3022);
const Color kDarkPrimaryColor = Color(0xFFDB3022);
const Color kOnSaleColor = Color(0xFFFF3E3E);
const Color kBlackColor = Color(0xFF222222);
const Color kWhiteColor = Color(0xFFFFFFFF);
const Color kDarkWhiteColor = Color(0xFFF6F6F6);
const Color kGrayColor = Color(0xFF9B9B9B);
const Color kDarkGrayColor = Color(0xFFABB4BD);
const Color kBackgroundColor = Color(0xFFF9F9F9);
const Color kDarkBackgroundColor = Color(0xFF1E1F28);
const Color kErrorColor = Color(0xFFF01F0E);
const Color kDarkErrorColor = Color(0xFFFF2424);
const Color kSuccessColor = Color(0xFF2AA952);
const Color kDarkSuccessColor = Color(0xFF55D85A);
const Color kDarkTextColor = Color(0xFF2A2C36);
const ColorScheme lightColorScheme = ColorScheme.light(
  primary: kBackgroundColor,
  primaryVariant: kDarkWhiteColor,
  secondary: kPrimaryColor,
  secondaryVariant: kDarkPrimaryColor,
  background: kBackgroundColor,
  surface: kBackgroundColor,
  onBackground: kBlackColor,
  error: kErrorColor,
  onError: kWhiteColor,
  onPrimary: kBlackColor,
  onSecondary: kWhiteColor,
  onSurface: kBlackColor,
);
const ColorScheme darkColorScheme = ColorScheme.dark(
  primary: kDarkBackgroundColor,
  primaryVariant: kBackgroundColor,
  secondary: kDarkPrimaryColor,
  secondaryVariant: kPrimaryColor,
  background: kDarkBackgroundColor,
  surface: kDarkBackgroundColor,
  onBackground: kDarkWhiteColor,
  error: kDarkErrorColor,
  onError: kDarkWhiteColor,
  onPrimary: kDarkTextColor,
  onSecondary: kDarkWhiteColor,
  onSurface: kDarkWhiteColor,
);
