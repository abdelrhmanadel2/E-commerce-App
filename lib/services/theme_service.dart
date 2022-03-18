import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/utils/services/storage_service.dart';

class ThemeService extends GetxService {
  ThemeMode get theme =>
      Get.find<StorageService>().isDarkmode ? ThemeMode.dark : ThemeMode.light;
  void switchTheme() {
    Get.changeThemeMode(Get.find<StorageService>().isDarkmode
        ? ThemeMode.light
        : ThemeMode.dark);
    Get.find<StorageService>().isDarkmode =
        !Get.find<StorageService>().isDarkmode;
  }
}
