import 'dart:ui';

import 'package:get/get.dart';

class WelcomeController extends GetxController {
  /// Index of the page
  var indexPage = 0.obs;

  /// switcher of the language
  var switcher = true.obs;

  @override
  void onInit() {
    if (Get.deviceLocale.toString() == "id_ID") {
      switcher.value = false;
    } else {
      switcher.value = true;
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  /// change language
  void changeLanguage() {
    switcher.value = !switcher.value;
    if (switcher.value) {
      Get.updateLocale(const Locale('en', 'US'));
    } else {
      Get.updateLocale(const Locale('id', 'ID'));
    }
  }
}
