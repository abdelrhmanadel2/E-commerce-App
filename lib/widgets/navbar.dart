import 'package:ecommerce_app/screens/catalog/catalog_screen.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/mainCategory/main_catetgories.dart';
import 'package:ecommerce_app/screens/subCategory/sub_gategory_screen.dart';
import 'package:ecommerce_app/services/catalog_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key, this.tabIndex = 0}) : super(key: key);
  final int tabIndex;
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  late int index;
  late List<int> lastIndex = [0];
  @override
  void initState() {
    index = widget.tabIndex;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (index == 0) homeScreen(),
          if (index == 1)
            WillPopScope(
              onWillPop: () async {
                setState(() {
                  index = lastIndex.last;
                  lastIndex.remove(lastIndex.last);
                });
                return false;
              },
              child: MainCategory(),
            ),
          if (index == 2)
            WillPopScope(
              onWillPop: () async {
                setState(() {
                  index = lastIndex.last;
                  lastIndex.remove(lastIndex.last);
                });
                return false;
              },
              child: SubCategory(),
            ),
          if (index == 3)
            WillPopScope(
              onWillPop: () async {
                setState(() {
                  index = lastIndex.last;
                  lastIndex.remove(lastIndex.last);
                });
                return false;
              },
              child: CatalogScreen(),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
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
        onTap: (index) {
          setState(() {
            this.index = index;
            if (index != 0) this.lastIndex.add(index);
          });
        },
      ),
    );
  }
}
