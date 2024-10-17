import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jakone_pay/app/data/assets.dart';
import 'package:jakone_pay/app/data/colors.dart';
import 'package:jakone_pay/app/data/fonts.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  final welcomeC = Get.put(WelcomeController());
  WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _help(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: SafeArea(
        child: Column(
          children: [
            _header(),
            _body(),
          ],
        ),
      ),
    );
  }

  /// Header of the view
  Widget _header() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Language switcher
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: black.withOpacity(0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Image.asset(id, height: 20),
                const SizedBox(width: 5),
                Obx(
                  () => SizedBox(
                    width: 25,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: welcomeC.switcher.value,
                        onChanged: (value) => welcomeC.changeLanguage(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Image.asset(en, height: 20),
              ],
            ),
          ),

          /// Cards jakcard and iccard
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(50),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Image.asset(icCard, height: 11),
                  const SizedBox(width: 5),
                  Image.asset(jakcard, height: 11),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Body of the view
  Widget _body() {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.only(top: 40),
        children: [
          /// PageView with 3 images
          SizedBox(
            height: 300,
            width: double.infinity,
            child: PageView.builder(
              itemCount: 3,
              onPageChanged: (index) => welcomeC.indexPage.value = index,
              itemBuilder: (context, index) {
                return Image.asset(
                  monas,
                  fit: BoxFit.contain,
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'title'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: bold,
                foreground: Paint()
                  ..shader = const LinearGradient(colors: [primary, secondary])
                      .createShader(
                    const Rect.fromLTWH(0, 0, 200, 70),
                  ),
              ),
            ),
          ),
          const SizedBox(height: 16),

          /// Indicator of the page dots
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: index == welcomeC.indexPage.value
                        ? primary
                        : primary.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),

          /// Button with gradient background
          GestureDetector(
            onTap: () => Get.offAllNamed('/home'),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [primary, secondary],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                border: Border.all(color: yellow, width: 2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  'continue'.tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: white,
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),

          /// Button no gradient background
          GestureDetector(
            onTap: () => Get.offAllNamed('/home'),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                  colors: [yellow, primary],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    'continue'.tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: primary,
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Help button
  Widget _help() {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Image.asset(help, height: 100),
    );
  }
}
