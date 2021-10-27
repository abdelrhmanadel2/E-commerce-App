import 'package:ecommerce_app/screens/catalog/catalog_screen.dart';
import 'package:ecommerce_app/screens/loginScreen/login_screen.dart';
import 'package:ecommerce_app/screens/signupScreen/signup_screen.dart';
import 'package:ecommerce_app/services/theme_service.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/translation_key.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/button.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/input_field_text.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: BottomNavBar(index: 4,),
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
        title: signUp.tr,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const ClampingScrollPhysics(),
        child: Column(
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
              child: const Text(
                'Change Theme',
              ),
              onPressed: () {
                Get.to(() => SignupScreen());
              },
            ),
            ElevatedButton(
              child: const Text(
                ' women\'s clothing',
              ),
              onPressed: () {
                Get.to(() => CatalogScreen(title: " women's clothing"));
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
                  height: 64.0.r,
                  width: 92.0.r,
                  backgroundColor: Colors.white,
                  borderRadius: 25.0.r,
                ),
                RoundedCornerButton(
                  onPressed: () {
                    print("hg");
                  },
                  icon: Image.asset("assets/icons/Group.png"),
                  hasShadow: true,
                  height: 64.0.r,
                  width: 92.0.r,
                  backgroundColor: Colors.white,
                  borderRadius: 25.0.r,
                ),
              ],
            ),
            const SizedBox(height: 15),
            RoundedCornerButton(
              onPressed: () {
                print("hg");
              },
              icon: const Icon(
                Icons.add,
              ),
              hasShadow: true,
              height: 30.0.r,
              width: 30.0.r,
              backgroundColor: theme.colorScheme.onSurface,
              borderRadius: 50.0.r,
            ),
            const SizedBox(height: 15),
            RoundedCornerButton(
              title: "Primary",
              onPressed: () {
                print("hg");
              },
              hasShadow: true,
              height: 48.0,
              width: 343,
              backgroundColor: theme.colorScheme.secondary,
              borderRadius: 50.0.r,
            ),
            const SizedBox(height: 15),
            RoundedCornerButton(
              title: "Primary",
              onPressed: () {
                print("hg");
              },
              icon: Image.asset("assets/icons/Group.png"),
              hasShadow: true,
              height: 48.0,
              width: 343,
              backgroundColor: theme.colorScheme.secondary,
              borderRadius: 50.0.r,
            ),
            const SizedBox(height: 15),
            RoundedCornerButton(
              title: "Outline",
              onPressed: () {
                print("hg");
              },
              hasBorder: true,
              hasShadow: true,
              height: 48.0,
              width: 343,
              borderRadius: 25.0.r,
            ),
            //my work
            ElevatedButton(
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(36.r, 36.r)),
                  foregroundColor:
                      MaterialStateProperty.all(theme.colorScheme.background),
                  backgroundColor:
                      MaterialStateProperty.all(theme.colorScheme.onBackground),
                  shape: MaterialStateProperty.all(const CircleBorder())),
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            CustomElevatedButton(
              width: 30,
              height: 30,
              forground: theme.colorScheme.background,
              background: theme.colorScheme.onSurface,
              circle: true,
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomElevatedButton(
                width: 343, height: 48, onPressed: () {}, text: "Primary"),
            const SizedBox(height: 15),

            CustomElevatedButton(
              width: 343,
              height: 48,
              onPressed: () {},
              text: "Primary",
              icon: Icon(Icons.pin),
            ),
            const SizedBox(height: 15),

            CustomElevatedButton(
              icon: Image.asset("assets/icons/Group.png"),
              height: 64.0.r,
              width: 92.0.r,
              background: Colors.white,
              onPressed: () {},
            ),
            const SizedBox(height: 15),
            OutlinedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(343.r, 48.r)),
              ),
              child: const Text('Outline'),
              onPressed: () {
                print("1");
              },
            ),
            const SizedBox(height: 15),
            const SizedBox(height: 70)
          ],
        ),
      ),
    );
  }
}
