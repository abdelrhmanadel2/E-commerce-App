import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

import 'localization_service.dart';

abstract class StorageKeys {
  StorageKeys();

  //Declare all storage keys here & create its correpsonding setters & getters
  static const String token = "TOKEN";
  static const String activeLocale = "ACTIVE_LOCAL";
  static const String client = "CLIENT";
  static const String userData = 'USER_DATA';
  static const String firstTime = 'FIRST_TIME';
  static const String rememberMe = 'REMEMBER_ME';
  static const String phone = 'phone';
}

class StorageService extends GetxService {
  StorageService(this._prefs);

  final GetStorage _prefs;

  static Future<StorageService> init() async {
    final GetStorage prefs = GetStorage();
    return StorageService(prefs);
  }

  // bool get firstTimeInstall {
  //   final firstTime = _prefs.getBool(StorageKeys.firstTime) ?? true;
  //   print('StorageService.firstTimeInstall, get >>  firstTime= $firstTime  ');
  //   return firstTime;
  // }

  // bool get rememberMe {
  //   return _prefs.getBool(StorageKeys.rememberMe) ?? false;
  // }

  // String get token {
  //   return _prefs.getString(StorageKeys.token) ?? "";
  // }

  // String get phone {
  //   return _prefs.getString(StorageKeys.phone) ?? '';
  // }

  // Future<void> setFirstTimeInstall(bool value) async =>
  //     await _prefs.setBool(StorageKeys.firstTime, value);

  // Future<void> setToken(String token) async =>
  //     await _prefs.setString(StorageKeys.token, token);

  // Future<void> setRememberMe(bool value) async =>
  //     await _prefs.setBool(StorageKeys.rememberMe, value);

  // Future<void> setPhone(String phone) async =>
  //     await _prefs.setString(StorageKeys.phone, phone);

  //Active Locale
  Locale get activeLocale {
    return Locale(_prefs.read(StorageKeys.activeLocale) ??
        SupportedLocales.arabic.toString());
  }

  set activeLocale(Locale activeLocal) {
    _prefs.write(StorageKeys.activeLocale, activeLocal.toString());
  }
}
