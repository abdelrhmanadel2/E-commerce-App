import 'package:ecommerce_app/services/theme_service.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/translation_key.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/utils/utils.dart';

class SignupScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 18,
              ),
              Text(
                signUp.tr,
                style: theme.textTheme.headline1,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<LocalizationService>().toggleLocale();
                },
                child: Text(
                  changeLanguage.tr,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Sign up"),
    //   ),
    //   body: SafeArea(
    //     child: Column(
    //       children: [
    //         Text(
    //           "Sign up",
    //           style: theme.textTheme.headline1,
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
