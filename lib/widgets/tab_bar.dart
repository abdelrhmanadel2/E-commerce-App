import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/home_page.dart';
import 'package:ecommerce_app/screens/mainCategory/main_catetgories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BottomNavBar extends StatefulWidget {

   BottomNavBar({Key? key, this.index, }) : super(key: key);
  var index;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final screenArrays=[ homeScreen(),mainCategory(),homeScreen(),homeScreen(),HomePage(),];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: screenArrays[widget.index],
        bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: theme.primaryColor),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color:theme.colorScheme.onSurface,),
            activeIcon: Icon(Icons.home,color:theme.colorScheme.secondary,),
            label: 'Home',

            backgroundColor:theme.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_rounded,color:theme.colorScheme.onSurface,),
            activeIcon: Icon(Icons.add_shopping_cart_rounded,color:theme.colorScheme.secondary,),
            label: 'Shop',
            backgroundColor:theme.primaryColor,
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.shopping_bag_outlined,color:theme.colorScheme.onSurface,),
            activeIcon: Icon(Icons.shopping_bag_outlined,color:theme.colorScheme.secondary,),
            label: 'Cart',
            backgroundColor:theme.colorScheme.primaryVariant,
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.favorite_outline_sharp,color:theme.colorScheme.onSurface,),
            activeIcon: Icon(Icons.favorite_outline_sharp,color:theme.colorScheme.secondary,),
            label: 'Favorite',
            backgroundColor:theme.colorScheme.primaryVariant,
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.perm_contact_calendar_outlined,color:theme.colorScheme.onSurface,),
            activeIcon: Icon(Icons.perm_contact_calendar_outlined,color:theme.colorScheme.secondary,),
            label: 'Profile',
            backgroundColor:theme.colorScheme.primaryVariant,
          ),
        ],
        currentIndex: widget.index,
        selectedItemColor: theme.colorScheme.secondary,
        onTap: _onItemTapped,

      ),
    );

  }

  void _onItemTapped(int selectedIndex) {
    widget.index =selectedIndex;
  }
}
