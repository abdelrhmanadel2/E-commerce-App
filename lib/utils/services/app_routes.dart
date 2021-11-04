import 'package:ecommerce_app/screens/catalog/catalog_screen.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/home/home_widget/sale_sreen.dart';
import 'package:ecommerce_app/screens/mainCategory/main_catetgories.dart';
import 'package:get/get.dart';

mixin AppRoutes {
  static String initialRoute = "/home";
  static String saleRoute = "/home/home_widget";
  static String mainCategory = "/mainCategory";
  static String subCategory = "/subCategory";
  static String catalog = "/catalog";
  static String bottomBarScreen = "/navbar";

  static List<GetPage> routes = [
    // GetPage(name: initialRoute, page: () => PersonalInformationScreen()),
    GetPage(
        name: initialRoute,
        page: () => homeScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: mainCategory,
        page: () => const MainCategory(),
        transition: Transition.fadeIn),
    GetPage(
        name: saleRoute,
        page: () => SaleScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: catalog,
        page: () => CatalogScreen(),
        transition: Transition.fadeIn),
  ];
}
