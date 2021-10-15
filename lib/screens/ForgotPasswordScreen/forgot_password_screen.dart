import 'package:ecommerce_app/screens/ForgotPasswordScreen/forgot_password_controller.dart';
import 'package:ecommerce_app/services/theme_service.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/translation_key.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/input_field_text.dart';
import 'package:ecommerce_app/widgets/validation_sign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: const AppBarWidget(),
        body: GetBuilder<ForgotPasswordController>(
            init: ForgotPasswordController(),
            builder: (controller) => SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Form(
                      key: controller.formKey,
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
                          SizedBox(height: 87.h),
                          const Text(
                              "Please, enter your email address. You will receive a link to create a new password via email."),
                          SizedBox(height: 18.h),
                          CustomInputfield(
                              labelText: "Email".tr,
                              controller: controller.emailController,
                              validator: controller.validateEmail,
                              validated: controller.emailValidated),
                          SizedBox(height: 53.h),
                          Center(
                            child: CustomElevatedButton(
                                width: 343,
                                height: 48,
                                onPressed: () {},
                                text: "SEND"),
                          ),
                        ],
                      ),
                    ),
                  ),
                )));

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
