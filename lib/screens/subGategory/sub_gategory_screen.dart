import 'package:ecommerce_app/screens/subGategory/subCategoryWidget/custom_app_bar.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class SubCategory extends StatelessWidget {
  const SubCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,

      child: Scaffold(
        appBar:  AppBarWidget(
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
        body: TabBarView(children: [
          Container(
            color: kBackgroundColor,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  child: Container(
                    height: 100,
                    width: Get.width*0.88,
                    decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)
                      ),

                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "SUMMER SALES",
                          textAlign: TextAlign.left,
                          style:extend(Styles.kTextStyleHeadline2, const TextStyle(color: kWhiteColor)),
                        ),
                        Text(
                          "Up to 50% off",
                          textAlign: TextAlign.left,
                          style:extend(Styles.kTextStyleDescription, const TextStyle(color: kWhiteColor)),
                        ),
                      ],
                    ),

                  ),
                ),Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  child: Container(
                    height: 100,
                    width: Get.width*0.88,
                    decoration: const BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)
                      ),

                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "New",
                            textAlign: TextAlign.left,
                            style:extend(Styles.kTextStyleHeadline3, const TextStyle(color: kBlackColor)),
                          ),
                        ),
                        Container(
                      height: 100,
                      width: Get.width*0.85/2,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)
                        ),
                        ),
                          child: Image.asset("assets/images/shoesCategory.png",fit: BoxFit.fill,),
                        ),

                      ],
                    ),
                  ),
                ),
                  ],
                ),
              ),
            ),
          )  ,    Container(
            color: kPrimaryColor,
            width:100,
            height: 100,
          )   ,   Container(
            color: kGrayColor,
            width:100,
            height: 100,
          )
        ],
        ),
      ),
    );
  }
}
