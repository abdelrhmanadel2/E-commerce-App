import 'package:get/get.dart';
import 'package:ecommerce_app/utils/translation_key.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en": {changeLanguage: "Change Language"},
        "ar": {changeLanguage: "تغير اللغة"}
      };
}
