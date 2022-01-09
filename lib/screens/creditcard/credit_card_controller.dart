import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';

class CredutCardController extends GetxController{
  final LocalAuthentication auth = LocalAuthentication();

  bool canCheckBiometrics = false;
  List<BiometricType>? availableBiometrics;
  bool showScreen = false;
  String authorized = 'Not Authorized';
  bool isAuthenticating = false;

  @override
  Future<void> onInit() async {

    super.onInit();
  }
 authenticate() async {
    try {
      showScreen = await auth.authenticate(
          localizedReason: "you can choose your authentication way",
          androidAuthStrings: const AndroidAuthMessages(biometricRequiredTitle: 'you can authenticate through fingerPrint or through pattern '),

          useErrorDialogs: true,
          stickyAuth: true);



    } on PlatformException catch (e) {
      print(e);

        isAuthenticating = false;
        authorized = 'Error - ${e.message}';

      return;

    }

    update();

  }
  Future<void> detectIfCanShowAuthenticationByBioMatrics() async {
    if(canCheckBiometrics){
      print(canCheckBiometrics);
        showScreen = await auth.authenticate(localizedReason: "to be sure that's you how connect to you bank information",
            stickyAuth: true,
            biometricOnly: true,androidAuthStrings: const AndroidAuthMessages(deviceCredentialsRequiredTitle: "your fingerprint is required",deviceCredentialsSetupDescription: "to be sure that's you how connect to you bank information",biometricNotRecognized: "please try again",biometricSuccess: "your data is already loading"),);

    }else{
      showScreen = true;
    }
    update();
  }
}