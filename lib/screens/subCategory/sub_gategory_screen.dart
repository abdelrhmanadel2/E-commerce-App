import 'package:ecommerce_app/screens/catalog/catalog_screen.dart';
import 'package:ecommerce_app/screens/subCategory/subCategoryWidget/category_cell.dart';
import 'package:ecommerce_app/screens/subCategory/subCategoryWidget/custom_app_bar.dart';
import 'package:ecommerce_app/services/theme_service.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubCategory extends StatelessWidget {
  SubCategory({Key? key, this.initialIndex}) : super(key: key);
  final initialIndex;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTabController(
      initialIndex: initialIndex,
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomNavBar(
          index: 1,
        ),
        appBar: AppBarWidget(
          hasBackButton: true,
          tabBar: true,
          actions: [
            IconButton(
                onPressed: Get.find<ThemeService>().switchTheme,
                icon: Icon(
                  Icons.zoom_out_sharp,
                  color: theme.colorScheme.onBackground,
                ))
          ],
          title: "Categories",
        ),
        body: TabBarView(
          children: [
            Container(
              color: theme.colorScheme.primary,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(
                              () => CatalogScreen(
                                title: "Summer Sales",
                              ),
                            );
                          },
                          child: Container(
                            height: 100,
                            width: Get.width * 0.88,
                            decoration: const BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "SUMMER SALES",
                                  textAlign: TextAlign.left,
                                  style: extend(Styles.kTextStyleHeadline2,
                                      const TextStyle(color: kWhiteColor)),
                                ),
                                Text(
                                  "Up to 50% off",
                                  textAlign: TextAlign.left,
                                  style: extend(Styles.kTextStyleDescription,
                                      const TextStyle(color: kWhiteColor)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      CategoryCell(
                        title: 'Clothes',
                        onPressed: () {
                          Get.to(
                            () => CatalogScreen(
                              title: "Clothes",
                              mainCategory: "Ladies",
                              subCategory: "clothes",
                            ),
                          );
                        },
                        imagePath: 'assets/images/womens-new-collection.jpg',
                      ),
                      CategoryCell(
                        title: 'T-Shirt',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "T-Shirt",
                              ));
                        },
                        imagePath: 'assets/images/womens-tshirt.jpg',
                      ),
                      CategoryCell(
                        title: 'jackets',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "jackets",
                              ));
                        },
                        imagePath: 'assets/images/womens-jackets.jpg',
                      ),
                      CategoryCell(
                        title: 'Shirts',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "Shirts",
                              ));
                        },
                        imagePath: 'assets/images/womens-shirts.jpeg',
                      ),
                      CategoryCell(
                        title: 'Trousers',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "Trousers",
                              ));
                        },
                        imagePath: 'assets/images/womens-trousers.jpeg',
                      ),
                      CategoryCell(
                        title: 'Accessories',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "Accessories",
                              ));
                        },
                        imagePath: 'assets/images/women-accessories.jpg',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: theme.colorScheme.primary,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: GestureDetector(
                          onTap: () {
                            print("hii");
                          },
                          child: Container(
                            height: 100,
                            width: Get.width * 0.88,
                            decoration: const BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "SUMMER SALES",
                                  textAlign: TextAlign.left,
                                  style: extend(Styles.kTextStyleHeadline2,
                                      const TextStyle(color: kWhiteColor)),
                                ),
                                Text(
                                  "Up to 50% off",
                                  textAlign: TextAlign.left,
                                  style: extend(Styles.kTextStyleDescription,
                                      const TextStyle(color: kWhiteColor)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      CategoryCell(
                        title: 'Clothes',
                        onPressed: () {
                          Get.to(
                            () => CatalogScreen(
                              title: "Clothes",
                              mainCategory: "Men",
                              subCategory: "clothes",
                            ),
                          );
                        },
                        imagePath: 'assets/images/mens-new-collections.jpg',
                      ),
                      CategoryCell(
                        title: 'T-Shirt',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "T-Shirt",
                              ));
                        },
                        imagePath: 'assets/images/mens-tshirt.jpg',
                      ),
                      CategoryCell(
                        title: 'jackets',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "jackets",
                              ));
                        },
                        imagePath: 'assets/images/mens-jackets.jpg',
                      ),
                      CategoryCell(
                        title: 'Shirts',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "Shirts",
                              ));
                        },
                        imagePath: 'assets/images/mens-shirt.jpg',
                      ),
                      CategoryCell(
                        title: 'Trousers',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "Trousers",
                              ));
                        },
                        imagePath: 'assets/images/mens-trousers.jpg',
                      ),
                      CategoryCell(
                        title: 'Accessories',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "Accessories",
                              ));
                        },
                        imagePath: 'assets/images/Men-accessories.jpg',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: theme.colorScheme.primary,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: GestureDetector(
                          onTap: () {
                            print("hii");
                          },
                          child: Container(
                            height: 100,
                            width: Get.width * 0.88,
                            decoration: const BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "SUMMER SALES",
                                  textAlign: TextAlign.left,
                                  style: extend(Styles.kTextStyleHeadline2,
                                      const TextStyle(color: kWhiteColor)),
                                ),
                                Text(
                                  "Up to 50% off",
                                  textAlign: TextAlign.left,
                                  style: extend(Styles.kTextStyleDescription,
                                      const TextStyle(color: kWhiteColor)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      CategoryCell(
                        title: 'Clothes',
                        onPressed: () {
                          Get.to(
                            () => CatalogScreen(
                              title: "Clothes",
                              mainCategory: "Kids",
                              subCategory: "clothes",
                            ),
                          );
                        },
                        imagePath: 'assets/images/kids-new-collection.jpg',
                      ),
                      CategoryCell(
                        title: 'T-Shirt',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "T-Shirt",
                              ));
                        },
                        imagePath:
                            'assets/images/Boy-Wearing-T-Shirt-Mockup.jpg',
                      ),
                      CategoryCell(
                        title: 'jackets',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "jackets",
                              ));
                        },
                        imagePath: 'assets/images/kids-jackets.jpeg',
                      ),
                      CategoryCell(
                        title: 'Shirts',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "Shirts",
                              ));
                        },
                        imagePath: 'assets/images/kids-shirt.jpg',
                      ),
                      CategoryCell(
                        title: 'Trousers',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "Trousers",
                              ));
                        },
                        imagePath: 'assets/images/kids-trousers.jpg',
                      ),
                      CategoryCell(
                        title: 'New born',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "New born",
                              ));
                        },
                        imagePath: 'assets/images/kid-newborn.jpg',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
