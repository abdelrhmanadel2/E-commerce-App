import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/home_page.dart';
import 'package:ecommerce_app/screens/mainCategory/main_catetgories.dart';
import 'package:ecommerce_app/utils/services/app_routes.dart';
import 'package:ecommerce_app/widgets/button.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 1),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: theme.colorScheme.surface,
          unselectedItemColor: theme.colorScheme.onSurface,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: widget.index == 0
                  ? SvgPicture.asset(
                      "assets/icons/home-fill-icon.svg",
                    )
                  : SvgPicture.asset(
                      "assets/icons/home-outline-icon.svg",
                      color: theme.colorScheme.onSurface,
                    ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: widget.index == 1
                  ? SvgPicture.asset(
                      "assets/icons/shop-fill-icon.svg",
                    )
                  : SvgPicture.asset(
                      "assets/icons/shop-outline-icon.svg",
                      color: theme.colorScheme.onSurface,
                    ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: widget.index == 2
                  ? SvgPicture.asset(
                      "assets/icons/bag-fill-icon.svg",
                    )
                  : SvgPicture.asset(
                      "assets/icons/bag-outline-icon.svg",
                      color: theme.colorScheme.onSurface,
                    ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: widget.index == 3
                  ? SvgPicture.asset(
                      "assets/icons/favorite-fill-icon.svg",
                    )
                  : SvgPicture.asset(
                      "assets/icons/favorite-outline-icon.svg",
                      color: theme.colorScheme.onSurface,
                    ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: widget.index == 4
                  ? SvgPicture.asset(
                      "assets/icons/profile-fill-icon.svg",
                    )
                  : SvgPicture.asset(
                      "assets/icons/profile-outline-icon.svg",
                      color: theme.colorScheme.onSurface,
                    ),
              label: 'Profile',
            ),
          ],
          currentIndex: widget.index,
          selectedItemColor: theme.colorScheme.secondary,
          onTap: _onItemTapped,
        ),
      ),
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
          Get.defaultDialog(
            middleText: "Please sign in  frist!",
            confirm: CustomElevatedButton(
              width: 100,
              height: 48,
              onPressed: () {},
              text: "LOGIN",
            ),
            cancel: CustomElevatedButton(
              width: 100,
              height: 48,
              onPressed: () {},
              text: "Cancel",
            ),
          );
          // Get.offAndToNamed(
          //   AppRoutes.mainCategory,
          // );
        }
        break;
      case 3:
        {
          Get.defaultDialog(
            middleText: "Please sign in  frist!",
            confirm: CustomElevatedButton(
              width: 100,
              height: 48,
              onPressed: () {},
              text: "LOGIN",
            ),
            cancel: CustomElevatedButton(
              width: 100,
              height: 48,
              onPressed: () {},
              text: "Cancel",
            ),
          );
          // Get.offAndToNamed(
          //   AppRoutes.catalog,
          // );
        }
        break;
      case 4:
        {
          Get.offAndToNamed(
            AppRoutes.profileScreen,
          );
        }
        break;
    }
  }
}
