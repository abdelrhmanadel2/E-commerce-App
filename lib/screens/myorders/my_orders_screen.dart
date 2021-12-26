import 'package:ecommerce_app/screens/myorders/myorderwidget/oreder_cell.dart';
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
         SizedBox(
           height: Get.height*0.7 - (MediaQuery.of(context).padding.bottom + 17) ,
           child: ListView.builder(
             itemCount: 10,
               itemBuilder: (BuildContext context, int index){
                 return OrderCell(orderNo: '1947034',totalAmountOfMoney: "112",itemCounter: "3", date: '18-11-2022', cancelled: selectedIndex == 2?true:false,delivered: selectedIndex == 0?true:false,);
               }),
         )
        ],
      ),
    );
  }
}
