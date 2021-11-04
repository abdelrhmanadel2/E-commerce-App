import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/home_page.dart';
import 'package:ecommerce_app/screens/mainCategory/main_catetgories.dart';
import 'package:ecommerce_app/utils/services/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key, required this.index}) : super(key: key);
  final index;

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  final screenArray = [
    homeScreen(),
    MainCategory(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      backgroundColor: theme.colorScheme.surface,
      unselectedItemColor: theme.colorScheme.onSurface,
      
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_shopping_cart_rounded,
          ),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag_outlined,
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline_sharp,
          ),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.perm_contact_calendar_outlined),
          label: 'Profile',
        ),
      ],
      currentIndex: widget.index,
      selectedItemColor: theme.colorScheme.secondary,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        {
          Get.offAndToNamed(
            AppRoutes.initialRoute,
          );
        }
        break;
      case 1:
        {
          Get.offAndToNamed(
            AppRoutes.mainCategory,
          );
        }
        break;
      case 2:
        {
          Get.offAndToNamed(
            AppRoutes.subCategory,
          );
        }
        break;
      case 3:
        {
          Get.offAndToNamed(
            AppRoutes.catalog,
          );
        }
        break;
      case 4:
        {
          Get.to(() => screenArray[4]);
        }
        break;
    }
  }
}
