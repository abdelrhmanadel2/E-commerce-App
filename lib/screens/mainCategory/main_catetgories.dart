import 'package:ecommerce_app/screens/catalog/catalog_screen.dart';
import 'package:ecommerce_app/screens/subCategory/sub_gategory_screen.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
class MainCategory extends StatelessWidget {
  const MainCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var hieght = Get.height - MediaQuery.of(context).padding.bottom + 17;
    return Scaffold(

      bottomNavigationBar: BottomNavBar(index: 1,),
      body: Container(
        color: theme.colorScheme.background,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/newCollectionBanner.png",width: double.infinity,height: hieght*0.41,fit: BoxFit.fill,),
                Positioned(
                    right: 0.0,
                     bottom: 0.0,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "New Collection",
                        textAlign: TextAlign.left,
                        style:extend(Styles.kTextStyleHeadline, const TextStyle(color: kWhiteColor)),
                      ),
                    ), ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.to(() => CatalogScreen(
                          title: "Summer Sales",
                        ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: theme.colorScheme.primary,
                        width: Get.width*0.5,
                        height: hieght*0.25,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Summer",
                              textAlign: TextAlign.left,
                              style:extend(Styles.kTextStyleHeadline, const TextStyle(color: kPrimaryColor)),
                            ),
                            Text(
                              "Sale",
                              textAlign: TextAlign.left,
                              style:extend(Styles.kTextStyleHeadline, const TextStyle(color: kPrimaryColor)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(() => SubCategory(initialIndex: 0,));
                      },
                      child: Stack(
                        children: [
                          Image.asset("assets/images/blackImage.png",width: Get.width*0.5,height: hieght*0.25,fit: BoxFit.fill,),
                          Positioned(
                            left: 0.0,
                            bottom: 0.0,
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Wommen",
                                textAlign: TextAlign.left,
                                style:extend(Styles.kTextStyleHeadline, const TextStyle(color: kWhiteColor)),
                              ),
                            ), ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.to(() => SubCategory(initialIndex: 1,));
                      },
                      child: Stack(
                        children: [
                          Image.asset("assets/images/menHoodieImage.png",width: Get.width*0.5,height: hieght*0.25,fit: BoxFit.fill,),
                          Positioned(
                            left: 0.0,
                            bottom: 0.0,
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Mens",
                                textAlign: TextAlign.left,
                                style:extend(Styles.kTextStyleHeadline, const TextStyle(color: kWhiteColor)),
                              ),
                            ), ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(() => SubCategory(initialIndex: 2,));
                      },
                      child: Stack(
                        children: [
                          Image.asset("assets/images/images.jpg",width: Get.width*0.5,height: hieght*0.25,fit: BoxFit.fill,),
                          Positioned(
                            left: 0.0,
                            bottom: 0.0,
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "kids",
                                textAlign: TextAlign.left,
                                style:extend(Styles.kTextStyleHeadline, const TextStyle(color: kWhiteColor)),
                              ),
                            ), ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
