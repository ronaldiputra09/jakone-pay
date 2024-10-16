import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jakone_pay/app/data/assets.dart';
import 'package:jakone_pay/app/data/colors.dart';
import 'package:jakone_pay/app/data/fonts.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
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

  Widget _header() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
                SizedBox(
                  width: 25,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Image.asset(en, height: 20),
              ],
            ),
          ),
          Container(
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
        ],
      ),
    );
  }

  Widget _body() {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(40),
        children: [
          Image.asset(monas, width: 275),
          const SizedBox(height: 20),
          Text(
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
          const SizedBox(height: 20),
          Container(
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
                style: TextStyle(
                  color: white,
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  'continue'.tr,
                  style: TextStyle(
                    color: primary,
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _help() {
    return Image.asset(help, height: 100);
  }
}
