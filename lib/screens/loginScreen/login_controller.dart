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
  late TextEditingController nameController;
  late TextEditingController passwordController;
  late TextEditingController emailController;
  bool? nameValidated;
  bool? passValidated;
  bool? emailValidated;
  bool formValidated = false;
  RxBool nameState = false.obs;
  RxBool passState = false.obs;
  RxBool emailState = false.obs;

  // InqueryModel? _inqueryModel;
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController();
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void clear() {
    passwordController.clear();
    // phoneController.clear();
    nameController.clear();
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

  String? validateEmail(String? email) {
    var validateEmail = _validatorHelber.validateEmail(email);
    if (validateEmail == null) {
      emailState = true.obs;
    }
    emailValidated = true;
    return validateEmail;
  }

  String? validateName(String? name) {
    final validateName = _validatorHelber.validateName(name);
    if (validateName == null) {
      nameState = true.obs;
    }
    nameValidated = true;
    return validateName;
  }

  String? validatePassword(String? password) {
    final validatePassword = _validatorHelber.validatePassword(password);
    if (validatePassword == null) {
      passState = true.obs;
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
    return 'LoginController{ _firstName: ${nameController.value},_email: ${emailController.value}, _password: ${passwordController.value}}';
  }
}
