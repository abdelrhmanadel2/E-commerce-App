import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ItemOrderDetailsCell extends StatelessWidget {
  const ItemOrderDetailsCell({Key? key, required this.imagePath, required this.market, required this.title, required this.itemColor, required this.itemPrice, required this.itemCount, required this.itemSize}) : super(key: key);
  final String imagePath;
  final String market;
  final String title;
  final String itemColor;
  final String itemPrice;
  final String itemCount;
  final String itemSize;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 8),
      child: GestureDetector(
        onTap: (){
          print("hiii");
        },
        child: Container(
          height: 100,
          width: Get.width*0.88,
          decoration:  BoxDecoration(

            color: theme.colorScheme.surface,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),

          ),
          child: Row(
            children: [
              Container(
                height: 100,
                width: Get.width*0.6/2,
                decoration:const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),),
                  child: Image.asset(imagePath,fit: BoxFit.fitWidth,),),
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.left,
                      style:extend(Styles.kTextStyleHeadline3,  TextStyle(color: theme.colorScheme.onSurface)),
                    ),
                    const SizedBox(height: 4,),
                    Text(market,style: extend(theme.textTheme.caption ?? const TextStyle(), TextStyle(color: theme.dividerColor))),
                    const SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: 'Color: ',style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 11))),
                              TextSpan(text: itemColor,style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 11))),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10,),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: 'Size: ',style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 11))),
                              TextSpan(text: itemSize,style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 11))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4,),
                    SizedBox(
                      width: Get.width*0.88-Get.width*0.36,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(text: 'Units: ',style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 11))),
                                TextSpan(text: itemCount,style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 11))),
                              ],
                            ),
                          ),

                          Text(
                            "$itemPrice\$",
                            textAlign: TextAlign.left,
                            style:extend(Styles.kTextStyleHeadline3,  TextStyle(color: theme.colorScheme.onSurface)),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
