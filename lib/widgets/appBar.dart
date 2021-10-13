import 'package:ecommerce_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/services/theme_service.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/utils/styles.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final title, hasBackButton, hasElevation;
  final List<Widget>? actions;

  const AppBarWidget({
    Key? key,
    this.title,
    this.hasBackButton = true,
    this.hasElevation = true,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      title: Text(
        title,
        style:extend(
            Styles.kTextStyleHeadline3, TextStyle(color: theme.accentColor)),
      ),


    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 60);
}
