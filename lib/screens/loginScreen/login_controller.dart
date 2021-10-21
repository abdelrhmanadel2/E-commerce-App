import 'package:ecommerce_app/screens/signupScreen/signup_helper.dart';
import 'package:ecommerce_app/utils/translation_key.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const wrongCode = 'assets/images/wrong_code.png';

class LoginController extends GetxController {
  final _validatorHelber = SignupHelper.instance;

  RxBool _visiblePsd = false.obs;

  //fixme make it false

  RxBool _isEnableLogin = false.obs;

  bool get isEnableLogin => _isEnableLogin.value;
  bool get visiblePsd => _visiblePsd.value;

  void toggleVisiblePsd() {
    _visiblePsd.value = !_visiblePsd.value;
    update();
  }

  set isEnableLogin(bool value) {
    _isEnableLogin.value = value;
    print('LoginController.isEnableSignup value= $value');
    update();
  }

  final formKey = GlobalKey<FormState>();
  late TextEditingController passwordController;
  late TextEditingController emailController;
  bool passValidated = false;
  bool emailValidated = false;
  bool formValidated = false;
  bool nameState = false;
  bool passState = false;
  bool emailState = false;

  // InqueryModel? _inqueryModel;
  @override
  void onInit() {
    super.onInit();
    passwordController = TextEditingController();
    emailController = TextEditingController();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void clear() {
    passwordController.clear();
    // phoneController.clear();
    emailController.clear();
  }

  // Future<void> sendInquiry() async {
  //   Loader.startLoading();

  //   late String successMessage;
  //   _inqueryModel = InqueryModel(
  //       name: nameController.text,
  //       email: emailController.text,
  //       mobileNo: phone,
  //       message: messageController.text);

  //   await APIHandler.sendInquiry(
  //     inquery: _inqueryModel,
  //     errorDialog: errorDialog,
  //     onSuccess: (successMsg) {
  //       successMessage = successMsg;
  //       Loader.stopLoading();
  //       Get.back();
  //       customDialogWidget(
  //           imagePath: "assets/icons/questionsIcon.svg", text1: successMessage);
  //       //  clear();
  //     },
  //   );
  // }

  void onUpdate(String? value) {
    if (value == "") {
      emailValidated = false;
    }
    update();
  }

  String? validateEmail(String? email) {
    final validateEmail = _validatorHelber.validateEmail(email);
    if (email == "") {
      emailState = false;
      emailValidated = false;
    } else if (validateEmail == null) {
      emailState = true;
      emailValidated = true;
    } else {
      emailValidated = true;
      emailState = false;
    }
    return validateEmail;
  }

  String? validatePassword(String? password) {
    final validatePassword = _validatorHelber.validatePassword(password);
    if (validatePassword == null) {
      passState = true;
    }
    passValidated = true;
    return validatePassword;
  }

  Future<void> sendPressed() async {
    formValidated = formKey.currentState!.validate();
    if (formValidated) {
      formKey.currentState?.save();
      // await sendInquiry();
    }
  }

  // late String _optCode;
  Future errorDialog(String err) async {
    return Get.defaultDialog(
        title: "error /n $tryAgain.tr ",
        titlePadding: EdgeInsets.symmetric(vertical: 10),
        middleText: err);
  }

  @override
  String toString() {
    return 'LoginController{ _email: ${emailController.value}, _password: ${passwordController.value}}';
  }
}
