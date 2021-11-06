import 'package:ecommerce_app/screens/catalog/catalog_screen.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/mainCategory/main_catetgories.dart';
import 'package:ecommerce_app/screens/profile/profile_screen.dart';
import 'package:ecommerce_app/screens/subCategory/sub_gategory_screen.dart';
import 'package:get/get.dart';


mixin AppRoutes {
  static String initialRoute = "/home";
  static String mainCategory = "/mainCategory";
  static String profileScreen = "/profile";
  static String subCategory = "/subCategory";
  static String catalog = "/catalog";

  static List<GetPage> routes = [
    // GetPage(name: initialRoute, page: () => PersonalInformationScreen()),
    GetPage(
      name: initialRoute,
      page: () => homeScreen(),
    ),
    GetPage(
      name: profileScreen,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: mainCategory,
      page: () => const MainCategory(),
    ),
    GetPage(
      name: subCategory,
      page: () => const SubCategory(),
    ),
    GetPage(
      name: catalog,
      page: () =>  CatalogScreen(),
    ),

  ];
}
