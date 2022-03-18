import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final title, hasBackButton, hasElevation, tabBar;
  final List<Widget>? actions;

  const AppBarWidget({
    Key? key,
    this.title,
    this.hasBackButton = true,
    this.hasElevation = true,
    this.actions,
    this.tabBar = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      elevation: hasElevation ? 1 : 0,
      centerTitle: true,
      backgroundColor: theme.colorScheme.surface,
      actions: actions,
      leading: hasBackButton
          ? IconButton(
              onPressed: () {
                Get.find<LocalizationService>().toggleLocale();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: theme.colorScheme.onBackground,
              ),
            )
          : Container(),

      bottom: tabBar
          ? TabBar(
              //Add tab bar to title

              indicator:  const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: kPrimaryColor, width: 2.0)),
              ),
              labelColor: theme.colorScheme.onBackground,
              labelStyle: extend(Styles.kTextStyleHeadline3,
                  TextStyle(color: theme.colorScheme.onBackground)),
              unselectedLabelColor: theme.colorScheme.onBackground,
              enableFeedback: true,
              tabs: const [
                Tab(
                  text: "Women",
                ),
                Tab(
                  text: "Men",
                ),
                Tab(
                  text: "Kids",
                ),
              ],
            )
          : null,
      title: Text(
        title ?? "",
        style: extend(
            Styles.kTextStyleHeadline3, TextStyle(color: theme.accentColor)),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 100);
}
