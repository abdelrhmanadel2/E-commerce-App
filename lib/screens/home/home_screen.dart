import 'package:ecommerce_app/screens/catalog/catalog_screen.dart';
import 'package:ecommerce_app/screens/home/home_controller.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/services/app_routes.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/loading_widget.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'home_widget/item_cell.dart';
import 'home_widget/sale_sreen.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: BottomNavBar(index: 0,),
      backgroundColor: theme.colorScheme.primary,
      body:
        GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return controller.loaded? Stack(
          children: <Widget>[
            Image.asset(
              "assets/images/fashionSalesBanner.png",
              width: Get.width,
              fit: BoxFit.fill,
            ),
            DraggableScrollableSheet(
              maxChildSize: 0.9,
              initialChildSize: 0.55,
              minChildSize: 0.55,
              builder: (context, scrollController) {
                return Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    physics: ClampingScrollPhysics(),
                    controller: scrollController,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                          child: SizedBox(
                            width: 190,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fashion",
                                  textAlign: TextAlign.left,
                                  style: extend(Styles.kTextStyleHeadline,
                                      const TextStyle(color: kWhiteColor)),
                                ),
                                Text(
                                  "Sale",
                                  textAlign: TextAlign.left,
                                  style: extend(Styles.kTextStyleHeadline,
                                      const TextStyle(color: kWhiteColor)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 32.0),
                          child: CustomElevatedButton(
                              width: 153,
                              height: 32,
                              onPressed: () {
                                controller.fetchSaleProduct();
                                Get.toNamed(AppRoutes.saleRoute);
                              },
                              text: "check"),
                        ),
                        Container(
                          color: theme.primaryColor,
                          width: Get.width,
                          height: Get.height * 0.62,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(15.0, 33.0, 15.0, 0.0),
                            child: SingleChildScrollView(
                              controller: scrollController,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0.0, 0.0, 5.0, 0.0),
                                            child: Text(
                                              "NEW For Men",
                                              textAlign: TextAlign.left,
                                              style: extend(
                                                  Styles.kTextStyleHeadline,
                                                   TextStyle(
                                                      color: theme.colorScheme.onBackground)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0.0, 0.0, 5.0, 0.0),
                                            child: Text(
                                              "You’ve never seen it before!",
                                              textAlign: TextAlign.left,
                                              style: extend(
                                                  Styles.kTextStyleDescription,
                                                  const TextStyle(
                                                      color: kGrayColor)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(() =>
                                              CatalogScreen(
                                                title: "New Collection",mainCategory: "Men"
                                              ),);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: Text(
                                            "View all",
                                            textAlign: TextAlign.left,
                                            style: extend(
                                                Styles.kTextStyleDescription,
                                                 TextStyle(
                                                    color: theme.colorScheme.onBackground)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  if (controller.menProductList.isEmpty)
                                    Container(
                                      height: 290.0,
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width:Get.width*0.5,
                                            child: Text("there's no item to show",textAlign: TextAlign.center,style:extend(
                                                Styles.kTextStyleHeadline,
                                                TextStyle(
                                                    color: theme.colorScheme.onBackground)),
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,),
                                          ),
                                          Image.asset("assets/icons/Component 7 – 1@3x.png",height: 290,width: Get.width*0.4,),
                                        ],
                                      ),
                                    )
                                    else Container(
                                      height: 290.0,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        controller: scrollController,
                                        itemCount: controller.menProductList.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return ItemCell(
                                          
                                            product: controller.menProductList[index],
                                         
                                          );
                                        },
                                      )) ,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0.0, 0.0, 5.0, 0.0),
                                            child: Text(
                                              "New For Ladies",
                                              textAlign: TextAlign.left,
                                              style: extend(
                                                  Styles.kTextStyleHeadline,
                                                   TextStyle(
                                                      color: theme.colorScheme.onBackground)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0.0, 0.0, 5.0, 0.0),
                                            child: Text(
                                              "You’ve never seen it before!",
                                              textAlign: TextAlign.left,
                                              style: extend(
                                                  Styles.kTextStyleDescription,
                                                  const TextStyle(
                                                      color: kGrayColor)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(() =>
                                              CatalogScreen(
                                                title: "New Collection",mainCategory: "Ladies"
                                              ),);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: Text(
                                            "View all",
                                            textAlign: TextAlign.left,
                                            style: extend(
                                                Styles.kTextStyleDescription,
                                                 TextStyle(
                                                    color: theme.colorScheme.onBackground)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  if (controller.womenProductList.isEmpty)
                                    Container(
                                      height: 290.0,
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width:Get.width*0.5,
                                            child: Text("there's no item to show",textAlign: TextAlign.center,style:extend(
                                                Styles.kTextStyleHeadline,
                                                TextStyle(
                                                    color: theme.colorScheme.onBackground)),
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,),
                                          ),
                                          Image.asset("assets/icons/Component 7 – 1@3x.png",height: 290,width: Get.width*0.4,),
                                        ],
                                      ),
                                    )
                                  else
                                    Container(
                                      height: 290.0,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        controller: scrollController,
                                        itemCount: controller.womenProductList.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return ItemCell(
                                         
                                            product: controller.womenProductList[index],
                                           
                                          );
                                        },
                                      )),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0.0, 0.0, 5.0, 0.0),
                                            child: Text(
                                              "New For Kids",
                                              textAlign: TextAlign.left,
                                              style: extend(
                                                  Styles.kTextStyleHeadline,
                                                   TextStyle(
                                                      color: theme.colorScheme.onBackground)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0.0, 0.0, 5.0, 0.0),
                                            child: Text(
                                              "You’ve never seen it before!",
                                              textAlign: TextAlign.left,
                                              style: extend(
                                                  Styles.kTextStyleDescription,
                                                  const TextStyle(
                                                      color: kGrayColor)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(() =>
                                              CatalogScreen(
                                                title: "New Collection",mainCategory: "Kids"
                                              ),);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: Text(
                                            "View all",
                                            textAlign: TextAlign.left,
                                            style: extend(
                                                Styles.kTextStyleDescription,
                                                 TextStyle(
                                                    color: theme.colorScheme.onBackground)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  if (controller.kidProductList.isEmpty)
                                    Container(
                                    height: 290.0,
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width:Get.width*0.5,
                                          child: Text("there's no item to show",textAlign: TextAlign.center,style:extend(
                                              Styles.kTextStyleHeadline,
                                              TextStyle(
                                                  color: theme.colorScheme.onBackground)),
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,),
                                        ),
                                        Image.asset("assets/icons/Component 7 – 1@3x.png",height: 290,width: Get.width*0.4,),
                                      ],
                                    ),
                                  )
                                  else
                                    Container(
                                      height: 290.0,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        controller: scrollController,
                                        itemCount: controller.kidProductList.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return ItemCell(
                                           
                                            product: controller.kidProductList[index],
                                        
                                          );
                                        },
                                      )) ,
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ):LoadingWidget() ;
          }
      ),
    );
  }
}