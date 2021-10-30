import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'item_cell.dart';
class saleScreen extends StatefulWidget {
  @override
  _saleScreenState createState() =>
      _saleScreenState();
}

class _saleScreenState
    extends State<saleScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar:  BottomNavBar(index: 0,),
      backgroundColor: theme.colorScheme.primary,
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              Image.asset("assets/images/clothesBanner.png",width: double.infinity,height: 260.r,fit: BoxFit.fill,),
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
          ),              Container(
                width:  double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  <Widget>[

                      Container(
                        color: kWhiteColor,
                        width: Get.width,
                        height: Get.height - 260.r,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 33.0, 15.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children:  <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0.0,0.0,5.0,0.0),
                                          child: Text(
                                            "NEW",
                                            textAlign: TextAlign.left,
                                            style:extend(Styles.kTextStyleHeadline, const TextStyle(color: kBlackColor)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0.0,0.0,5.0,0.0),
                                          child: Text(
                                            "You’ve never seen it before!",
                                            textAlign: TextAlign.left,
                                            style:extend(Styles.kTextStyleDescription, const TextStyle(color: kGrayColor)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0.0,0.0,5.0,0.0),
                                      child: Text(
                                        "View all",
                                        textAlign: TextAlign.left,
                                        style:extend(Styles.kTextStyleDescription, const TextStyle(color: kBlackColor)),
                                      ),
                                    ),


                                  ],
                                ),
                                Container(
                                    height: 290.0,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 25,
                                      itemBuilder: (BuildContext context, int index){
                                        return ItemCell(addToFavorite: (){Get.find<LocalizationService>().toggleLocale();}, hasDiscount: false, title: "Evening Dress", rating: 0.0, storeName: "Dorothy Perkins", totalRating: "0",price: "\$30", imagePath: "assets/images/image.png",);
                                      },
                                    )
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0.0,0.0,5.0,0.0),
                                          child: Text(
                                            "Sale",
                                            textAlign: TextAlign.left,
                                            style:extend(Styles.kTextStyleHeadline, const TextStyle(color: kBlackColor)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0.0,0.0,5.0,0.0),
                                          child: Text(
                                            "Super summer sale",
                                            textAlign: TextAlign.left,
                                            style:extend(Styles.kTextStyleDescription, const TextStyle(color: kGrayColor)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0.0,0.0,5.0,0.0),
                                      child: Text(
                                        "View all",
                                        textAlign: TextAlign.left,
                                        style:extend(Styles.kTextStyleDescription, const TextStyle(color: kBlackColor)),
                                      ),
                                    ),


                                  ],
                                ),
                                Container(
                                    height: 290.0,
                                    child:  ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 25,
                                      itemBuilder: (BuildContext context, int index){
                                        return ItemCell(addToFavorite: (){print("hii");}, hasDiscount: true, title: "Evening Dress", rating: 2.5, storeName: "Dorothy Perkins", totalRating: "10",priceAfter: "\$10",priceBefore: "\$5",discountPrecentage: "50%", imagePath: "assets/images/image 2.png",);
                                      },
                                    )
                                ),
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
      ),
    );
  }
}