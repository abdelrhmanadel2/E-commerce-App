
import 'package:ecommerce_app/utils/services/app_routes.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override

  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: BottomNavBar(index: 4,),

      appBar: AppBarWidget(
        hasBackButton: false,
        hasElevation: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
        ],
      ),
      backgroundColor: theme.primaryColor,
      body:Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    color: theme.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    const SizedBox(
    height: 18,
    ),
    Text(
    "My Profile",
    style: theme.textTheme.headline1,
    ),
    const SizedBox(
    height: 12,
    ),
  ],
      ),
    ),
      Container(
        color: theme.primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
        Container(
        margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
        height: 64,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Image.asset(
            "assets/images/blackImage.png",
            fit: BoxFit.cover,
            ),
        ),
        ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const SizedBox(height: 10,),
                Text("Matilda Brown",style: theme.textTheme.subtitle1,),
                const SizedBox(height: 10,),
                Text("matildabrown@mail.com",style: extend(theme.textTheme.caption ?? const TextStyle(), TextStyle(color: theme.dividerColor))),
              ],
            ),
          ],
        ),
      ),
      const SizedBox(height: 10,),
      GestureDetector(
        onTap: (){
          Get.offAndToNamed(
            AppRoutes.myOrder,
          );
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0,0.0),
          height: 65,
          width: double.infinity,
          decoration:  BoxDecoration(
            border:  Border(
              bottom: BorderSide(width: 1.0, color: theme.colorScheme.primaryVariant),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const SizedBox(height: 10,),
                  Text("My orders",style: theme.textTheme.subtitle1,),
                  const SizedBox(height: 10,),
                  Text("Already have 12 orders",style: extend(theme.textTheme.caption ?? const TextStyle(), TextStyle(color: theme.dividerColor))),
                ],
              ),
              Icon(Icons.arrow_forward_ios,color: theme.dividerColor,size: 15.0,)
            ],
          ),
        ),
      ),
      const SizedBox(height: 10,),
      Container(
        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0,0.0),
        height: 65,
        width: double.infinity,
        decoration:  BoxDecoration(
          border:  Border(
            bottom: BorderSide(width: 1.0, color: theme.colorScheme.primaryVariant),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const SizedBox(height: 10,),
                Text("Shipping addresses",style: theme.textTheme.subtitle1,),
                const SizedBox(height: 10,),
                Text("3 ddresses",style: extend(theme.textTheme.caption ?? const TextStyle(), TextStyle(color: theme.dividerColor))),
              ],
            ),
            Icon(Icons.arrow_forward_ios,color: theme.dividerColor,size: 15.0,)
          ],
        ),
      ),
      const SizedBox(height: 10,),
      Container(
        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0,0.0),
        height: 65,
        width: double.infinity,
        decoration:  BoxDecoration(
          border:  Border(
            bottom: BorderSide(width: 1.0, color: theme.colorScheme.primaryVariant),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const SizedBox(height: 10,),
                Text("Payment methods",style: theme.textTheme.subtitle1,),
                const SizedBox(height: 10,),
                Text("Visa  **34",style: extend(theme.textTheme.caption ?? const TextStyle(), TextStyle(color: theme.dividerColor))),
              ],
            ),
            Icon(Icons.arrow_forward_ios,color: theme.dividerColor,size: 15.0,)
          ],
        ),
      ),
      const SizedBox(height: 10,),
      Container(
        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0,0.0),
        height: 65,
        width: double.infinity,
        decoration:  BoxDecoration(
          border:  Border(
            bottom: BorderSide(width: 1.0, color: theme.colorScheme.primaryVariant),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const SizedBox(height: 10,),
                Text("Promocodes",style: theme.textTheme.subtitle1,),
                const SizedBox(height: 10,),
                Text("You have special promocodes",style: extend(theme.textTheme.caption ?? const TextStyle(), TextStyle(color: theme.dividerColor))),
              ],
            ),
            Icon(Icons.arrow_forward_ios,color: theme.dividerColor,size: 15.0,)
          ],
        ),
      ),
      const SizedBox(height: 10,),
      Container(
        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0,0.0),
        height: 65,
        width: double.infinity,
        decoration:  BoxDecoration(
          border:  Border(
            bottom: BorderSide(width: 1.0, color: theme.colorScheme.primaryVariant),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const SizedBox(height: 10,),
                Text("My reviews",style: theme.textTheme.subtitle1,),
                const SizedBox(height: 10,),
                Text("Reviews for 4 items",style: extend(theme.textTheme.caption ?? const TextStyle(), TextStyle(color: theme.dividerColor))),
              ],
            ),
            Icon(Icons.arrow_forward_ios,color: theme.dividerColor,size: 15.0,)
          ],
        ),
      ),
      GestureDetector(
          onTap: (){
            Get.offAndToNamed(
              AppRoutes.settings,
            );
          },
        child: Container(
          padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0,0.0),
          height: 65,
          width: double.infinity,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const SizedBox(height: 10,),
                  Text("Settings",style: theme.textTheme.subtitle1,),
                  const SizedBox(height: 10,),
                  Text("Notifications, password",style: extend(theme.textTheme.caption ?? const TextStyle(), TextStyle(color: theme.dividerColor))),
                ],
              ),
              Icon(Icons.arrow_forward_ios,color: theme.dividerColor,size: 15.0,)
            ],
          ),
        ),
      ),
  ],
    ),
    );
  }
}
