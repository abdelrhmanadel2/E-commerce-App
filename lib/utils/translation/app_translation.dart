import 'package:get/get.dart';
import 'package:ecommerce_app/utils/translation_key.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en": {
          changeLanguage: "Change Language",
          signUp: "Sign up",
          tryAgain: "Try Again",
          "Name": "Name",
          "Password": "Password",
          "Email": "Email",
          "HaveAcount": "Already have an account?",
          invalidPassword: "Invalid Password",
          "FORGOTPASSWORD": "Forgot your password?"
        },
        "ar": {
          changeLanguage: "تغير اللغة",
          signUp: "اشتراك",
          tryAgain: "أعد المحاولة",
          "Name": "اللأسم",
          "Password": "الرقم السري",
          "Email": "البريد الألكتروني",
          "HaveAcount": "تمتلك حساب بالفعل؟",
          invalidPassword: "رقم مرور خاطئ",
          "FORGOTPASSWORD": "نسيت كلمه السر؟"
        }
      };
}
