import 'package:ecommerce_app/screens/signupScreen/signup_screen.dart';
import 'package:ecommerce_app/services/theme_service.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/translation_key.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBarWidget(
        hasBackButton: true,
        actions: [
          IconButton(
            icon: Get.isDarkMode
                ? const Icon(Icons.light_mode)
                : const Icon(Icons.dark_mode),
            onPressed: Get.find<ThemeService>().switchTheme,
          ),
          IconButton(
              onPressed: () {
                print("hi");
              },
              icon: Icon(
                Icons.add_shopping_cart,
                color: theme.accentColor,
              ))
        ],
        title: "jhiiiiii",
      ),
      body: Column(
        children: [
          const Icon(Icons.add_a_photo_sharp),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.find<LocalizationService>().toggleLocale();
              },
              child: Text(
                changeLanguage.tr,
              ),
            ),
          ),
          ElevatedButton(
            child: Text(
              'Change Theme',
            ),
            onPressed: () {
              Get.to(() => SignupScreen());
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RoundedCornerButton(
                onPressed: () {
                  print("hg");
                },
                icon: Image.asset("assets/icons/fGroup.png"),
                height: 64.0.h,
                width: 92.0.w,
                backgroundColor: Colors.white,
                borderRadius: 20.0,
              ),
              RoundedCornerButton(
                onPressed: () {
                  print("hg");
                },
                icon: Image.asset("assets/icons/Group.png"),
                hasShadow: true,
                height: 64.0.h,
                width: 92.0.w,
                backgroundColor: Colors.white,
                borderRadius: 20.0,
              ),
            ],
          ),
          ElevatedButton(
            child: Text(
              'Change Theme',
            ),
            onPressed: () {
              print("1");
            },
          ),
          RoundedCornerButton(
            onPressed: () {
              print("hg");
            },
            icon: const Icon(
              Icons.add,
            ),
            hasShadow: true,
            height: 40.0,
            width: 40.0,
            backgroundColor: theme.colorScheme.onSurface,
            borderRadius: 50.0,
          ),
          RoundedCornerButton(
            title: "Primary",
            onPressed: () {
              print("hg");
            },
            hasShadow: true,
            height: 48.0.h,
            width: 343.w,
            backgroundColor: theme.colorScheme.secondary,
            borderRadius: 50.0.r,
          ),
          RoundedCornerButton(
            title: "Outline",
            onPressed: () {
              print("hg");
            },
            hasBorder: true,
            hasShadow: true,
            height: 48.0.h,
            width: 343.w,
            borderRadius: 50.0.r,
          ),
        ],
      ),
    );
  }
}
