import 'package:ecommerce_app/utils/services/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SupportedLocales {
  static List<Locale> all = [Locale("en"), Locale("ar")];

  static Locale english = Locale("en");
  static Locale arabic = Locale("ar");
}

class LocalizationService extends GetxService {
  LocalizationService(this._activeLocale);

  final Locale _activeLocale;

  Locale get activeLocale => _activeLocale;

  static LocalizationService init() {
    //Get active local from storage
    final Locale activeLocale = Get.find<StorageService>().activeLocale;
    return LocalizationService(activeLocale);
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
