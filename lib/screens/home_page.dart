import 'package:ecommerce_app/services/theme_service.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/appBar.dart';
import 'package:ecommerce_app/widgets/button.dart';
import 'package:ecommerce_app/widgets/circular_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ecommerces App",
          style: extend(
              Styles.kTextStyleHeadline3, TextStyle(color: theme.accentColor)),
        ),
        actions: [
          IconButton(
            icon:
                Get.isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
            onPressed: ThemeService().switchTheme,
          )
        ],
      ),
      body: Center(

        child: Column(

          children: [
            AppBarWidget(hasBackButton: true,actions: [IconButton(onPressed: (){print("hi");}, icon: Icon(Icons.add_shopping_cart,color:  theme.accentColor,))],title: "jhiiiiii",),
            ElevatedButton(
              child: Text(
                'Change Theme',
              ),
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RoundedCornerButton(title: "", onPressed: () { print("hg"); }, icon: Image.asset("assets/icons/fGroup.png"),hasShadow: true,height: 64.0,width: 92.0,backgroundColor: Colors.white, borderRadius: 20.0,),
                RoundedCornerButton(title: "", onPressed: () { print("hg"); }, icon: Image.asset("assets/icons/Group.png"),hasShadow: true,height: 64.0,width: 92.0,backgroundColor: Colors.white, borderRadius: 20.0,),

              ],
            ),
            RoundedCornerButton(title: "", onPressed: () { print("hg"); }, icon:Icon(Icons.add,color: Colors.white,),hasShadow: true,height: 40.0,width: 40.0,backgroundColor: Colors.black, borderRadius: 50.0,),
            RoundedCornerButton(title: "primary", onPressed: () { print("hg"); },hasShadow: true,height: 48.0,width: Get.width*0.9,backgroundColor: kPrimaryColor,textStyle: extend(Styles.kTextStyleHeadline3, TextStyle(color: theme.backgroundColor)),  borderRadius: 50.0,),
            RoundedCornerButton(title: "primary", onPressed: () { print("hg"); },hasBorder:true,hasShadow: true,height: 48.0,width: Get.width*0.9,backgroundColor: theme.backgroundColor,textStyle: extend(Styles.kTextStyleHeadline3, TextStyle(color: kPrimaryColor)),  borderRadius: 50.0,),
          ],
        ),
      ),
    );
  }
}
