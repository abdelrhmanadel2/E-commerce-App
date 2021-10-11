import 'package:ecommerce_app/services/theme_service.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/translation/app_translation.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/utils/translation_key.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ecommerces App",
          style: extend(
              Styles.kTextStyleHeadline3, TextStyle(color: theme.accentColor)),
        ),
        actions: [
          IconButton(
            icon:
                Get.isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
            onPressed: ThemeService().switchTheme,
          )
        ],
      ),
      body: Column(
        children: [
          Icon(Icons.add_a_photo_sharp),
          Center(
            child: ElevatedButton(
              child: Text(
                changeLanguage.tr,
              ),
              onPressed: () {
                Get.find<LocalizationService>().toggleLocale();
              },
            ),
          ),
        ],
      ),
    );
  }
}
