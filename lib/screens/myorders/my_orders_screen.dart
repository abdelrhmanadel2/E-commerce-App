import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  int  selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: BottomNavBar(index: 4,),

      appBar: AppBarWidget(
        color: theme.colorScheme.primary,
        hasElevation: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
        ],
      ),
      backgroundColor: theme.colorScheme.primary,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: theme.colorScheme.primary,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Orders",
                  style: extend(theme.textTheme.headline1 ?? const TextStyle(), const TextStyle(fontSize: 35) ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionChip(
                      backgroundColor:
                      selectedIndex == 0?theme.colorScheme.onSurface:theme.colorScheme.primary,
                      label: Container(
                        constraints:
                         BoxConstraints(minWidth: Get.width*0.22,minHeight: 30),
                        child: Padding(
                          padding:  const EdgeInsets.symmetric(vertical: 8,),
                          child: Text(
                            "Delivered",
                            style: theme.textTheme.button!.apply(
                                color:
                                selectedIndex == 0?theme.colorScheme.background:theme.colorScheme.onSurface,),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = 0;
                        });

                      },),
                  ActionChip(
                      backgroundColor:
                      selectedIndex == 1?theme.colorScheme.onSurface:theme.colorScheme.primary,
                      label: Container(
                        constraints:
                         BoxConstraints(minWidth: Get.width*0.22,minHeight: 30),
                        child: Padding(
                          padding:  const EdgeInsets.symmetric(vertical: 8,),
                          child: Text(
                            "Processing",
                            style: theme.textTheme.button!.apply(
                                color:
                                selectedIndex == 1?theme.colorScheme.background:theme.colorScheme.onSurface,),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = 1;
                        });

                      },),
                  ActionChip(
                      backgroundColor:
                      selectedIndex == 2?theme.colorScheme.onSurface:theme.colorScheme.primary,
                      label: Container(
                        constraints:
                         BoxConstraints(minWidth: Get.width*0.22,minHeight: 30),
                        child: Padding(
                          padding:  const EdgeInsets.symmetric(vertical: 8,),
                          child: Text(
                            "Cancelled",
                            style: theme.textTheme.button!.apply(
                                color:
                                selectedIndex == 2?theme.colorScheme.background:theme.colorScheme.onSurface,),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },),
                ],
              ),
            ),
          ),
          Padding(
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
                        Text("Order №1947034:",style: extend(theme.textTheme.button ?? const TextStyle(), TextStyle(fontSize: 16))),
                        Text("05-12-2019",style: extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
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
                          TextSpan(text: 'IW3475453455',style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 14))),
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
                              TextSpan(text: '3',style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 14))),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: 'Total Amount: ',style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
                              TextSpan(text: '112\$',style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 14))),
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
                              print("hiiiiii");
                            },
                            text: "check",),
                        Text("Delivered",style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 16,color: kSuccessColor))),

                      ],
                    ),
                  ),
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}
