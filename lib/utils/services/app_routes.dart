import 'package:ecommerce_app/screens/catalog/catalog_screen.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/mainCategory/main_catetgories.dart';
import 'package:ecommerce_app/screens/subCategory/sub_gategory_screen.dart';
import 'package:ecommerce_app/widgets/navbar.dart';
import 'package:get/get.dart';

mixin AppRoutes {
  static String initialRoute = "/home";
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
        name: subCategory,
        page: () => const SubCategory(),
        transition: Transition.fadeIn),
    GetPage(
        name: catalog,
        page: () => CatalogScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: bottomBarScreen,
        page: () => BottomBarScreen(),
        transition: Transition.fadeIn),
  ];
}
