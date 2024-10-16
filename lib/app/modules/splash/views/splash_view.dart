import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jakone_pay/app/data/assets.dart';
import 'package:jakone_pay/app/data/colors.dart';
import 'package:jakone_pay/app/data/fonts.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  SplashView({super.key});
  final splashC = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bgSplash),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  logo,
                  width: 286,
                ),
              ),
            ),
            Image.asset(
              ojkLps,
              width: 100,
            ),
            const SizedBox(height: 16),
            Text(
              'powered by BANK DKI\n2023',
              style: secondaryFont.copyWith(
                fontSize: 11,
                color: white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
