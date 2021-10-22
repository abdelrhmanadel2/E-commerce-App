import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryCell extends StatelessWidget {
  const CategoryCell({Key? key, required this.imagePath, required this.title, required this.onPressed}) : super(key: key);
   final String imagePath;
   final String title;
   final Function onPressed;

  @override
  Widget build(BuildContext context) {
    print(Get.find<LocalizationService>().activeLocale == "en");
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
      child: GestureDetector(
        onTap: (){
          onPressed();

        },
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
                  title,
                  textAlign: TextAlign.left,
                  style:extend(Styles.kTextStyleHeadline3, const TextStyle(color: kBlackColor)),
                ),
              ),
              Container(
                height: 100,
                width: Get.width*0.85/2,
                decoration:Get.find<LocalizationService>().detectLang() == "en" ? const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)
                  ),
                ):const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                ),
                child: Image.asset(imagePath,fit: BoxFit.fill,),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
