import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'myorderwidget/items_order_detail_cell.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const orderNo="12345679";
    const date= "18-10-2022";
    const trackNo="LMK634873786";
    const delivered=true;
    const cancelled = false;
    const title = "Pullover";
    const imagePath= 'assets/images/blackImage.png';
    const market = "mango";
    const itemColor = "gray";
    const itemSize = "XL";
    const itemCount = "1";
    const itemPrice = "51";
    const orderAddress="3 Newbridge Court ,Chino Hills,CA 91709, United States hjvhvghcgh yujffyufthycf yugfyuftyuf" ;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(index: 4,),

      appBar: AppBarWidget(
        hasElevation: false,
        title: "Order Details",
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
        ],
      ),
      backgroundColor: theme.colorScheme.primary,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19.0,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  const EdgeInsets.fromLTRB(0.0,19.0,15.0,0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Order №$orderNo",style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 16,))),
                    Text(date,style: extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,0.0,15.0,0.0),

              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(

                        children: [
                          TextSpan(text: 'Tracking number: ',style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
                          TextSpan(text: trackNo,style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 14))),
                        ],
                      ),
                    ),
                    if (cancelled) Text("Cancelled",style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 16,color: kErrorColor))) else delivered==true?Text("Delivered",style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 16,color: kSuccessColor))):Text("Not Delivered",style: extend(theme.textTheme.button ?? const TextStyle(),  TextStyle(fontSize: 16,color: theme.dividerColor))),
                  ],
                ),
              ),
          Padding(padding:  const EdgeInsets.fromLTRB(0.0,10.0,15.0,0.0),
          child: Text("3 Items",style: extend(theme.textTheme.headline1 ?? const TextStyle(), const TextStyle(fontSize: 16))),
          ),
              Padding(padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                height: 350,
                child: ListView.builder(

                  itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                     return const ItemOrderDetailsCell(market: market, itemCount: itemCount, imagePath: imagePath,itemColor: itemColor,title: title,itemPrice: itemPrice,itemSize: itemSize,);
                    },
                ),
              ), ),
              Text("Order information",style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 16,))),
              const SizedBox(height: 15,),
              SizedBox(
                width: Get.width*0.88,
                height: 70.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shipping Address: ",style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
                    Expanded(
                      child: Text(orderAddress,style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 14)),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        softWrap: false,),
                    ),
          ],
                ),
              ),
              const SizedBox(height: 27,),
              SizedBox(
                width: Get.width*0.88,
                height: 30.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Payment method:  ",style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
                    Image.asset("assets/icons/mastercardlogo.png"),
                    Text("  **** **** **** 3947",style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 14)),
                      textAlign: TextAlign.left,
                    ),
          ],
                ),
              ),
              const SizedBox(height: 27,),
              SizedBox(
                width: Get.width*0.88,
                height: 30.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery method:  ",style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
                    Expanded(
                     
                      child: Text("FedEx, 3 days, 15\$",style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 14)),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        softWrap: false,),
                    ),
          ],
                ),
              ),
              const SizedBox(height: 27,),
              SizedBox(
                width: Get.width*0.88,
                height: 30.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discount: ",style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
                    SizedBox(
                      width: Get.width*0.55,
                      height: 30.0,
                      child: Text("10%, Personal promo code",style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 14)),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        softWrap: false,),
                    ),
          ],
                ),
              ),
              const SizedBox(height: 27,),
              SizedBox(
                width: Get.width*0.88,
                height: 30.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Amount: ",style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
                    SizedBox(
                      width: Get.width*0.55,
                      height: 30.0,
                      child: Text("133\$",style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 14)),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        softWrap: false,),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 27,),
              SizedBox(
                width: Get.width*0.88,
                height: 36.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedButton(
                      width: 160,
                      background: theme.colorScheme.onBackground,
                      height: 36,
                      onPressed: () {
                        Get.to(const OrderDetailsScreen());
                      },
                      text: "Reorder",hasTextStyle: true,textStyle: TextStyle(color: theme.colorScheme.surface)),
                    CustomElevatedButton(
                      width: 160,
                      background: theme.colorScheme.secondary,
                      height: 36,
                      onPressed: () {
                        Get.to(const OrderDetailsScreen());
                      },
                      text: "Leave feedback",),
                  ],
                ),
              ),
              const SizedBox(height: 37,),

            ],
          ),
        ),
      ),
    );
  }
}
