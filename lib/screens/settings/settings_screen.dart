import 'package:ecommerce_app/services/theme_service.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/translation_key.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/input_field_text.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var switchOn = true;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        index: 4,
      ),
      appBar: AppBarWidget(
        hasBackButton: false,
        hasElevation: false,
        color: theme.colorScheme.background,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Settings",
                    style: theme.textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
              Text("Personal Information",
                  style: extend(
                      theme.textTheme.headline1 ?? const TextStyle(),
                      const TextStyle(
                        fontSize: 16,
                      ))),
              const SizedBox(
                height: 21,
              ),
              CustomInputfield(
                onchange: (value) {
                  print(value);
                },
                labelText: "Full name",
              ),
              const SizedBox(height: 15),
              CustomInputfield(
                onchange: (value) {
                  print(value);
                },
                labelText: "Date of Birth",
              ),
              const SizedBox(height: 55),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Password",
                      style: extend(
                          theme.textTheme.headline1 ?? const TextStyle(),
                          const TextStyle(
                            fontSize: 16,
                          ))),
                  Text("Change",
                      style: extend(
                          theme.textTheme.subtitle1 ?? const TextStyle(),
                          TextStyle(fontSize: 14, color: theme.dividerColor))),
                ],
              ),
              const SizedBox(height: 21),
              CustomInputfield(
                onchange: (value) {
                  print(value);
                },
                labelText: "password",
              ),
              const SizedBox(height: 55),
              Text("Notifications",
                  style: extend(
                      theme.textTheme.headline1 ?? const TextStyle(),
                      const TextStyle(
                        fontSize: 16,
                      ))),
              const SizedBox(height: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sales",
                      style: extend(
                          theme.textTheme.subtitle1 ?? const TextStyle(),
                          const TextStyle(
                            fontSize: 14,
                          ))),
                  CupertinoSwitch(
                    value: switchOn,
                    thumbColor: switchOn ? kSuccessColor : kWhiteColor,
                    activeColor: kDarkWhiteColor,
                    onChanged: (value) {
                      setState(() {
                        switchOn = value;
                      });
                    },
                  )
                ],
              ),
              const SizedBox(height: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New arrivals",
                      style: extend(
                          theme.textTheme.subtitle1 ?? const TextStyle(),
                          const TextStyle(
                            fontSize: 14,
                          ))),
                  CupertinoSwitch(
                    value: switchOn,
                    thumbColor: switchOn ? kSuccessColor : kWhiteColor,
                    activeColor: kDarkWhiteColor,
                    onChanged: (value) {
                      setState(() {
                        switchOn = value;
                      });
                    },
                  )
                ],
              ),
              const SizedBox(height: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery status changes",
                      style: extend(
                          theme.textTheme.subtitle1 ?? const TextStyle(),
                          const TextStyle(
                            fontSize: 14,
                          ))),
                  CupertinoSwitch(
                    value: true,
                    thumbColor: switchOn ? kSuccessColor : kWhiteColor,
                    activeColor: kDarkWhiteColor,
                    onChanged: (value) {
                      setState(() {
                        switchOn = value;
                      });
                    },
                  )
                ],
              ),
              const SizedBox(height: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("APP Theme",
                      style: extend(
                          theme.textTheme.subtitle1 ?? const TextStyle(),
                          const TextStyle(
                            fontSize: 14,
                          ))),
                  IconButton(
                    icon: Get.isDarkMode
                        ? const Icon(Icons.light_mode)
                        : const Icon(Icons.dark_mode),
                    onPressed: Get.find<ThemeService>().switchTheme,
                  ),
                ],
              ),
              const SizedBox(height: 21),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.find<LocalizationService>().toggleLocale();
                  },
                  child: Text(
                    changeLanguage.tr,
                  ),
                ),
              ),
              const SizedBox(height: 21),
            ],
          ),
        ),
      ),
    );
  }
}
