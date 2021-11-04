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

  static List<GetPage> routes = [
    // GetPage(name: initialRoute, page: () => PersonalInformationScreen()),
    GetPage(
      name: initialRoute,
      page: () => homeScreen(),
    ),
    GetPage(
      name: saleRoute,
      page: () => SaleScreen(),
    ),
    GetPage(
      name: mainCategory,
      page: () => const MainCategory(),
    ),
    GetPage(
      name: catalog,
      page: () =>  CatalogScreen(),
    ),

  ];
}
