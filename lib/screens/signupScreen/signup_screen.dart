import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/home_page.dart';
import 'package:ecommerce_app/screens/loginScreen/login_screen.dart';
import 'package:ecommerce_app/screens/signupScreen/signup_controller.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/services/localization_service.dart';
import 'package:ecommerce_app/utils/translation_key.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/input_field_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: GetBuilder<SignupController>(
            init: SignupController(),
            builder: (controller) => SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 70),
                    child: Form(
                      key: controller.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Get.to(homeScreen());
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Skip"),
                                      SizedBox(width: 4.w),
                                      Icon(
                                        Get.find<LocalizationService>()
                                                    .activeLocale ==
                                                Locale("en")
                                            ? Icons.arrow_right_alt_rounded
                                            : Icons.keyboard_arrow_left_rounded,
                                        color: theme.colorScheme.secondary,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(height: 25.h),

                          const SizedBox(
                            height: 18,
                          ),
                          Text(
                            signUp.tr,
                            style: theme.textTheme.headline1,
                          ),
                          SizedBox(height: 75.h),
                          CustomInputfield(
                            onchange: controller.onNameupdate,
                            labelText: "Name".tr,
                            controller: controller.nameController,
                            validator: controller.validateName,
                            icon: (controller.nameValidated)
                                ? (controller.nameState)
                                    ? const Icon(Icons.check_rounded,
                                        color: kSuccessColor)
                                    : const Icon(
                                        Icons.close_outlined,
                                        color: kErrorColor,
                                      )
                                : null,
                          ),
                          SizedBox(height: 8.h),
                          CustomInputfield(
                            onchange: controller.onEmailUpdate,
                            labelText: "Email".tr,
                            controller: controller.emailController,
                            validator: controller.validateEmail,
                            icon: (controller.emailValidated)
                                ? (controller.emailState)
                                    ? const Icon(Icons.check_rounded,
                                        color: kSuccessColor)
                                    : const Icon(
                                        Icons.close_outlined,
                                        color: kErrorColor,
                                      )
                                : null,
                          ),
                          SizedBox(height: 8.h),
                          CustomInputfield(
                              labelText: "Password".tr,
                              controller: controller.passwordController,
                              validator: controller.validatePassword,
                              isAutoValidate: true,
                              obsecure: !controller.visiblePsd,
                              keyboardType: TextInputType.visiblePassword,
                              icon: IconButton(
                                // Based on passwordVisible state choose the icon
                                icon: Icon(
                                  controller.visiblePsd
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: theme.accentColor,
                                ),
                                onPressed: () {
                                  controller.toggleVisiblePsd();
                                },
                              )),
                          SizedBox(height: 22.h),
                          // TextButton.icon(
                          //     style: ButtonStyle(
                          //         textStyle: MaterialStateProperty.all(
                          //             TextStyle(color: kOnSaleColor)),
                          //         backgroundColor:
                          //             MaterialStateProperty.all(Colors.black87),
                          //         fixedSize: MaterialStateProperty.all(
                          //           Size(300, 50),
                          //         )),
                          //     onPressed: () {},
                          //     icon: Icon(Icons.arrow_right_alt_rounded),
                          //     label: Text("Already have an account?"))
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Get.to(LoginScreen());
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("HaveAcount".tr),
                                      SizedBox(width: 4.w),
                                      Icon(
                                        Get.find<LocalizationService>()
                                                    .activeLocale ==
                                                Locale("en")
                                            ? Icons.arrow_right_alt_rounded
                                            : Icons.keyboard_arrow_left_rounded,
                                        color: theme.colorScheme.secondary,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(height: 25.h),
                          Center(
                            child: CustomElevatedButton(
                                width: 343,
                                height: 48,
                                onPressed: () {
                                  Get.to(() => homeScreen());
                                },
                                text: "SIGN UP"),
                          ),
                          SizedBox(height: 126.r),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Or sign up with social accoint",
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 12.h),
                              Center(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomElevatedButton(
                                      icon:
                                          Image.asset("assets/icons/Group.png"),
                                      height: 64.0.r,
                                      width: 92.0.r,
                                      background: Colors.white,
                                      onPressed: () {
                                        // controller.signinGoogle();
                                      },
                                    ),
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                    CustomElevatedButton(
                                      icon: Image.asset(
                                          "assets/icons/fGroup.png"),
                                      height: 64.0.r,
                                      width: 92.0.r,
                                      background: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
