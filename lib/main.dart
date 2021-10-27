import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/services/theme_service.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/services/storage_service.dart';
import 'package:ecommerce_app/utils/themes.dart';
import 'package:ecommerce_app/utils/translation/app_translation.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/services.dart';

void main() async {
  await GetStorage.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);

  await Get.putAsync(() => StorageService.init(), permanent: true);
  Get.put(LocalizationService(), permanent: true);
  Get.put(ThemeService(), permanent: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              translations: AppTranslations(),
              locale: Get.find<LocalizationService>().activeLocale,
              supportedLocales: SupportedLocales.all,
              fallbackLocale: SupportedLocales.english,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              theme: Themes.lightTheme,
              darkTheme: Themes.darkTheme,
              themeMode: Get.find<ThemeService>().theme,
              home: BottomNavBar(index: 0,),
            ));
  }
}
