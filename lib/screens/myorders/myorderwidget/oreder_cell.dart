
import 'package:ecommerce_app/screens/myorders/order_detail_screen.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderCell extends StatelessWidget {
  const OrderCell({Key? key, required this.itemCounter, required this.orderNo, required this.date, required this.totalAmountOfMoney, required this.delivered, required this.cancelled}) : super(key: key);
   final String itemCounter;
   final String orderNo;
   final String date;
   final String totalAmountOfMoney;
   final bool delivered;
   final bool cancelled;


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        width: Get.width*0.92,
        height: 164,
        decoration:  BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  const EdgeInsets.fromLTRB(19.0,19.0,15.0,18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Order №$orderNo:",style: extend(theme.textTheme.button ?? const TextStyle(), TextStyle(fontSize: 16))),
                  Text("$date",style: extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
                ],
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(19.0,0.0,15.0,4.0),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(

                  children: [
                    TextSpan(text: 'Tracking number: ',style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
                    TextSpan(text: '$orderNo',style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 14))),
                  ],
                ),
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(19.0,0.0,15.0,4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'Quantity: ',style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
                        TextSpan(text: '$itemCounter',style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 14))),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'Total Amount: ',style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
                        TextSpan(text: '$totalAmountOfMoney\$',style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 14))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(19.0,10.0,15.0,4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    width: 98,
                    background: theme.colorScheme.onBackground,
                    height: 36,
                    onPressed: () {
                     Get.to(const OrderDetailsScreen());
                    },
                    text: "check",hasTextStyle: true,textStyle: TextStyle(color: theme.colorScheme.surface),),
                  if (cancelled) Text("Cancelled",style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 16,color: kErrorColor))) else delivered?Text("Delivered",style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 16,color: kSuccessColor))):Text("Not Delivered",style: extend(theme.textTheme.button ?? const TextStyle(),  TextStyle(fontSize: 16,color: theme.dividerColor))),

                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
