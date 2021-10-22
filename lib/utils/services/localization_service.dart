import 'package:ecommerce_app/utils/services/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: avoid_classes_with_only_static_members
class SupportedLocales {
  static List<Locale> all = [const Locale("en"), const Locale("ar")];

  static Locale english = const Locale("en");
  static Locale arabic = const Locale("ar");
}

class LocalizationService extends GetxService {
  Locale get activeLocale => Get.find<StorageService>().activeLocale;

   detectLang(){
    String s;
    if (Get.find<StorageService>().activeLocale == SupportedLocales.arabic) {
      s = "ar";
    } else {
      s = "en";
    }
    return s;
  }
  void toggleLocale() {
    final Locale newLocale =
        Get.find<StorageService>().activeLocale == SupportedLocales.arabic
            ? SupportedLocales.english
            : SupportedLocales.arabic;
    //in storage
    Get.find<StorageService>().activeLocale = newLocale;

    print('LocalizationService.toggleLocale, newLocale= $newLocale');
    //in Getx
    Get.updateLocale(newLocale);
  }

  void changeLocale(String language) {
    Get.find<StorageService>().activeLocale = Locale(language);

    //in Getx
    Get.updateLocale(Locale(language));
  }
}
