import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/utils/styles.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final title, hasBackButton, hasElevation, tabBar;
  final List<Widget>? actions;

  const AppBarWidget({
    Key? key,

    this.title,
    this.hasBackButton = true,
    this.hasElevation = true,
    this.actions, this.tabBar=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var borderColor1 = kWhiteColor;
    var borderColor2 = kWhiteColor;
    var borderColor3 = kWhiteColor;
    final theme = Theme.of(context);
    return AppBar(
      elevation: hasElevation ? 1 : 0,
      centerTitle: true,
      backgroundColor:  theme.backgroundColor,
      actions: actions,
      leading: hasBackButton
          ? IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color:  theme.accentColor,
        ),
      )
          : Container(),
      bottom:  TabBar(//Add tab bar to title

        indicator: BoxDecoration(
            border: Border(bottom: BorderSide(color: kPrimaryColor,width: 2.0)),

            ),
        labelColor: kBlackColor,
        labelStyle: extend(
            Styles.kTextStyleHeadline3, TextStyle(color: theme.accentColor)),
        unselectedLabelColor: kBlackColor,
        isScrollable: false,
        enableFeedback: true,
        tabs: [
          Tab(text: "Women",),
          Tab(text: "Men",),
          Tab(text: "Kids",),
        ],
      ),
      title: Text(
        title??"",
        style:extend(
            Styles.kTextStyleHeadline3, TextStyle(color: theme.accentColor)),
      ),


    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 100);
}
