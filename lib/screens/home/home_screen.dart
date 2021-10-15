import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'home_widget/item_cell.dart';

class homeScreen extends StatefulWidget {
@override
_homeScreenState createState() =>
_homeScreenState();
}

class _homeScreenState
extends State<homeScreen> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      children: <Widget>[
        Image.asset("assets/images/fashionSalesBanner.png",width: Get.width,fit: BoxFit.fill,),
        DraggableScrollableSheet(
          maxChildSize: 0.9,
          initialChildSize: 0.55,
          minChildSize: 0.55,
          builder: (context, scrollController) {
            return Container(
              width:  double.infinity,
              child: SingleChildScrollView(
                physics : ClampingScrollPhysics(),
                controller: scrollController,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15.0,0.0,15.0,0.0),
                      child: SizedBox(
                          width: 190,
                          child: Text(
                            "Fashionsale",
                            textAlign: TextAlign.left,
                            style:extend(Styles.kTextStyleMassiveHeadline, const TextStyle(color: kWhiteColor)),
        )
    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15.0,18.0,15.0,32.0),
                      child: RoundedCornerButton(
                        title: "check",
                        onPressed: () {
                          print("hg");
                        },
                        hasShadow: true,
                        height: 32.0,
                        width: 140,
                        backgroundColor: kPrimaryColor,
                        borderRadius: 50.0.r,
                      ),
                    ),
                    Container(
                      color: kWhiteColor,
                      width: Get.width,
                      height: Get.height*0.68,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 33.0, 15.0, 0.0),
                        child: SingleChildScrollView(
                          controller: scrollController,
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
                             controller: scrollController,
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
                                    controller: scrollController,
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
            );
},
),
],
),
);
}
}