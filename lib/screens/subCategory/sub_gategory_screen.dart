import 'package:ecommerce_app/screens/catalog/catalog_screen.dart';
import 'package:ecommerce_app/screens/subCategory/subCategoryWidget/category_cell.dart';
import 'package:ecommerce_app/screens/subCategory/subCategoryWidget/custom_app_bar.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubCategory extends StatelessWidget {
  const SubCategory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomNavBar(index: 2,),
        appBar: AppBarWidget(
          hasBackButton: true,
          actions: [
            IconButton(
                onPressed: () {
                  print("hi");
                },
                icon: Icon(
                  Icons.zoom_out_sharp,
                  color: kBlackColor,
                ))
          ],
          title: "Categories",
        ),
        body: TabBarView(
          children: [
            Container(
              color: kBackgroundColor,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: Container(
                          height: 100,
                          width: Get.width * 0.88,
                          decoration: const BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
                      CategoryCell(
                        title: 'New',
                        onPressed: () {
                          Get.to(() => CatalogScreen(
                                title: "New",
                              ));
                        },
                        imagePath: 'assets/images/shoesCategory.png',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: kPrimaryColor,
              width: 100,
              height: 100,
            ),
            Container(
              color: kGrayColor,
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
