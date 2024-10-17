import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jakone_pay/app/data/assets.dart';
import 'package:jakone_pay/app/data/colors.dart';
import 'package:jakone_pay/app/data/fonts.dart';
import 'package:jakone_pay/app/modules/home/widgets/menu.dart';
import 'package:jakone_pay/app/modules/home/widgets/title_menu.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final homeC = Get.put(HomeController());
  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _helpAndQris(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _navbar(),
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          _header(),
          _menu(),
          _banner(),
          TitleMenu(title: "title_1", subtitle: "subtitle_1", icon: lestgo),
          _place(),
          TitleMenu(title: "title_2", subtitle: "subtitle_2", icon: icEvent),
          _event(),
        ],
      ),
    );
  }

  Widget _header() {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 40),
          height: 260,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80),
              bottomRight: Radius.circular(80),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [primary, secondary],
            ),
          ),
        ),

        /// AppBar with logo and notification icons
        Positioned(
          top: 50,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(logo, width: 150),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [primary, secondary, yellow],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: black.withOpacity(0.25),
                          blurRadius: 5,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Image.asset(icNote, width: 20),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [primary, secondary, yellow],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 5,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Image.asset(icNotification, width: 20),
                  ),
                ],
              ),
            ],
          ),
        ),

        /// user info with profile image
        Positioned(
          top: 120,
          left: 16,
          right: 16,
          child: Row(
            children: [
              Image.asset(profile, width: 38),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'good_home'.tr,
                    style: TextStyle(
                      color: white,
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'Guest',
                    style: TextStyle(
                      color: white,
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        /// balance account
        Positioned(
          top: 200,
          left: 32,
          right: 32,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: black.withOpacity(0.25),
                  blurRadius: 5,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  height: Get.height,
                  width: 14,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [primary, yellow],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'balance_home'.tr,
                      style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Rp ',
                        style: TextStyle(
                          color: black,
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                        children: [
                          TextSpan(
                            text: '0',
                            style: TextStyle(
                              color: black,
                              fontSize: 18,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '-',
                      style: TextStyle(
                        color: black,
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: yellow, width: 2),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [primary, secondary],
                      ),
                    ),
                    child: Text(
                      'topup_home'.tr,
                      style: TextStyle(
                        color: white,
                        fontSize: 12,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  ///
  Widget _menu() {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
      child: Wrap(
        direction: Axis.vertical,
        runAlignment: WrapAlignment.spaceBetween,
        children: [
          Menu(
            icon: explore,
            title: "menu_1",
          ),
          Menu(
            icon: topup,
            title: "menu_2",
          ),
          Menu(
            icon: cards,
            title: "menu_3",
          ),
          Menu(
            icon: event,
            title: "menu_4",
          ),
        ],
      ),
    );
  }

  /// Banner Widget
  Widget _banner() {
    return SizedBox(
      height: 100,
      width: Get.width,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.85),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage(inijakarta),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }

  /// Place Widget Menu
  Widget _place() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 16),
          height: 170,
          width: Get.width,
          child: Row(
            children: [
              /// image did you know
              Container(
                margin: const EdgeInsets.only(left: 16),
                height: 120,
                width: 80,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(didYouKnow),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),

              /// list of places
              Expanded(
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.5),
                  padEnds: false,
                  itemCount: homeC.dataPlace.length,
                  onPageChanged: (index) =>
                      homeC.indexIndicatorPlace.value = index,
                  itemBuilder: (context, index) {
                    var data = homeC.dataPlace[index];
                    return Container(
                      margin: const EdgeInsets.only(
                        right: 10,
                        left: 10,
                        bottom: 6,
                      ),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.25),
                            blurRadius: 5,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                image: AssetImage("${data['image']}"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${data['title']}".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 10,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 4,
                                          vertical: 1,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                              color: yellow, width: 1),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [primary, secondary],
                                          ),
                                        ),
                                        child: Text(
                                          'detail'.tr,
                                          style: TextStyle(
                                            color: white,
                                            fontSize: 8,
                                            fontWeight: bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),

        /// dots indicator
        Obx(
          () => Container(
            padding: const EdgeInsets.only(top: 10, bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(homeC.dataPlace.length, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: index == homeC.indexIndicatorPlace.value
                        ? primary
                        : primary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }

  /// Event Widget Menu
  Widget _event() {
    return Column(
      children: [
        /// list of events
        Container(
          padding: const EdgeInsets.only(top: 20, left: 32),
          height: 250,
          width: Get.width,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.8),
            padEnds: false,
            itemCount: homeC.dataEvent.length,
            onPageChanged: (index) {
              homeC.indexIndicatorEvent.value = index;
            },
            itemBuilder: (context, index) {
              var data = homeC.dataEvent[index];
              return Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [secondary, white.withOpacity(0.5)],
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: white, width: 3),
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("${data['image']}"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [primary, secondary],
                        ),
                      ),
                      child: Text(
                        'more'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: white,
                          fontSize: 12,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),

        /// dots indicator
        Obx(
          () => Container(
            padding: const EdgeInsets.only(top: 5, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(homeC.dataEvent.length, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: index == homeC.indexIndicatorEvent.value
                        ? primary
                        : primary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }

  /// Help and Qris Button Widget
  Widget _helpAndQris() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Help Button
        Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(50),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Image.asset(help, height: 100),
            ),
          ),
        ),

        // Qris Button
        Positioned(
          bottom: 0,
          child: Container(
            height: 70,
            width: 70,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: white, width: 3),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [primary, secondary],
              ),
              boxShadow: [
                BoxShadow(
                  color: black.withOpacity(0.08),
                  blurRadius: 16,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Image.asset(icQris, height: 18),
          ),
        )
      ],
    );
  }

  /// Bottom Navigation Bar Widget
  Widget _navbar() {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        color: white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(0.08),
            blurRadius: 16,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(icHome, height: 24),
          const SizedBox(width: 32.0),
          Image.asset(icUser, height: 24),
        ],
      ),
    );
  }
}
