import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/utils/services/storage_service.dart';

class ThemeService {
  late final bool _isDarkTheme;
  ThemeService() {
    //Get active mode from storage
    _isDarkTheme = Get.find<StorageService>().isDarkmode;
  }
  ThemeMode get theme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;
  void switchTheme() {
    Get.changeThemeMode(_isDarkTheme ? ThemeMode.light : ThemeMode.dark);
    Get.find<StorageService>().isDarkmode = !_isDarkTheme;
  }
}
