import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    navigateToHome();
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

  // func to navigate to another page after splash screen 3 seconds
  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offNamed('/home');
      },
    );
  }
}
