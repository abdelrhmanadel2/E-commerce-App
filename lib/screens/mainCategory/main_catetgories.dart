import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
class mainCategory extends StatefulWidget {
  const mainCategory({Key? key}) : super(key: key);

  @override
  State<mainCategory> createState() => _mainCategoryState();
}

class _mainCategoryState extends State<mainCategory> {
  @override
  Widget build(BuildContext context) {
    var hieght = Get.height - MediaQuery.of(context).padding.bottom;
    return Scaffold(
      body: Container(
        color: kWhiteColor,
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
                    Container(
                      alignment: Alignment.center,
                      color: kWhiteColor,
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
                    Stack(
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
                  ],
                ),
                Stack(
                  children: [
                    Image.asset("assets/images/menHoodieImage.png",width: Get.width*0.5,height: hieght*0.5,fit: BoxFit.fill,),
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
              ],
            ),
          ],
        ),
      ),

    );
  }
}
