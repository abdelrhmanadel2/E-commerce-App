import 'package:ecommerce_app/screens/catalog/catalog_screen.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/loading_widget.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../home_controller.dart';
import 'item_cell.dart';
class SaleScreen extends StatefulWidget {
  @override
  _SaleScreenState createState() =>
      _SaleScreenState();
}

class _SaleScreenState
    extends State<SaleScreen> {
  @override

  Widget build(BuildContext context) {
    var hieght = Get.height - MediaQuery.of(context).padding.bottom;
    final theme = Theme.of(context);

    return Scaffold(
      bottomNavigationBar:  BottomNavBar(index: 0,),
      backgroundColor: theme.colorScheme.primary,
      body: GetBuilder<HomeController>(
    init: HomeController(sale: true),
    builder: (controller) {
       return controller.loaded? Column(
          children: <Widget>[
            Stack(
              children: [
                Image.asset("assets/images/clothesBanner.png",width: double.infinity,height: 200,fit: BoxFit.fill,),
                Positioned(
                  right: 0.0,
                  bottom: 0.0,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Sales",
                      textAlign: TextAlign.left,
                      style:extend(Styles.kTextStyleHeadline, const TextStyle(color: kWhiteColor)),
                    ),
                  ), ),
              ],
            ),
            Container(
              color: theme.colorScheme.primary,
                  width:  double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  <Widget>[

                        Container(
                          width: Get.width,
                          height: hieght - 260,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 33.0, 15.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children:  <Widget>[
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
                                              "Sales For Men",
                                              textAlign: TextAlign.left,
                                              style: extend(
                                                  Styles.kTextStyleHeadline,
                                                  TextStyle(
                                                      color: theme.colorScheme.onBackground)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0.0, 0.0, 5.0, 0.0,),
                                            child: Text(
                                              "Super summer sale",
                                              textAlign: TextAlign.left,
                                              style: extend(
                                                  Styles.kTextStyleDescription,
                                                  const TextStyle(
                                                      color: kGrayColor,),),
                                            ),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(() =>
                                              CatalogScreen(
                                                title: "Sales",
                                              ));
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
                                  if (controller.menSaleProductList.isEmpty)
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
                                        itemCount: controller.menSaleProductList.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return ItemCell(
                                            addToFavorite: () {
                                              Get.find<LocalizationService>()
                                                  .toggleLocale();
                                            },
                                            hasDiscount: controller.menSaleProductList[index].sale,
                                            title: controller.menSaleProductList[index].name,
                                            discountPrecentage: "50%",
                                            rating: double.parse(controller.menSaleProductList[index].rating.rate.numberDouble),
                                            storeName: controller.menSaleProductList[index].categories[0],
                                            totalRating: controller.menSaleProductList[index].rating.count.numberInt,
                                            priceBefore: "\$${controller.menSaleProductList[index].price.value.numberDouble}",
                                            priceAfter: "\$${controller.menSaleProductList[index].whitePrice.value.numberDouble}",
                                            imagePath: controller.menSaleProductList[index].images[0].url,
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
                                              "Sales For Ladies",
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
                                              "Super summer sale",
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
                                                title: "Sales",
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
                                  if (controller.womenSaleProductList.isEmpty)
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

                                          itemCount: controller.womenSaleProductList.length,
                                          itemBuilder:
                                              (BuildContext context, int index) {
                                            return ItemCell(
                                              addToFavorite: () {
                                                print("hii");
                                              },
                                              hasDiscount: controller.womenSaleProductList[index].sale,
                                              title: controller.womenSaleProductList[index].name,
                                              rating: double.parse(controller.womenSaleProductList[index].rating.rate.numberDouble),
                                              storeName: controller.womenSaleProductList[index].categories[0],
                                              discountPrecentage: "50%",
                                              totalRating: controller.womenSaleProductList[index].rating.count.numberInt,
                                              priceBefore: "\$${controller.womenSaleProductList[index].price.value.numberDouble}",
                                              priceAfter: "\$${controller.womenSaleProductList[index].whitePrice.value.numberDouble}",
                                              imagePath:controller.womenSaleProductList[index].images[0].url,
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
                                                0.0, 0.0, 5.0, 0.0,),
                                            child: Text(
                                              "Sales For Kids",
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
                                              "Super summer sale",
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
                                                title: "Sales",
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
                                  if (controller.kidSaleProductList.isEmpty)
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
                                          itemCount: controller.kidSaleProductList.length,
                                          itemBuilder:
                                              (BuildContext context, int index) {
                                            return ItemCell(
                                              addToFavorite: () {
                                                print("hii");
                                              },
                                              hasDiscount: controller.kidSaleProductList[index].sale,
                                              title: controller.kidSaleProductList[index].name,
                                              discountPrecentage: "50%",
                                              rating: double.parse(controller.kidSaleProductList[index].rating.rate.numberDouble),
                                              storeName: controller.kidSaleProductList[index].categories[0],
                                              totalRating: controller.kidSaleProductList[index].rating.count.numberInt,
                                              priceBefore: "\$${controller.kidSaleProductList[index].price.value.numberDouble}",
                                              priceAfter: "\$${controller.kidSaleProductList[index].whitePrice.value.numberDouble}",
                                              imagePath: controller.kidSaleProductList[index].images[0].url,
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
                )
          ],
        ):
        LoadingWidget();
        },),
      ) ;

  }
}