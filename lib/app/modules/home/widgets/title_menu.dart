import 'package:flutter/material.dart';
import 'package:jakone_pay/app/data/colors.dart';
import 'package:jakone_pay/app/data/fonts.dart';
import 'package:get/get.dart';

class TitleMenu extends StatelessWidget {
  String title;
  String subtitle;
  String icon;
  TitleMenu({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              border: Border(
                right: BorderSide(color: yellow, width: 2),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [primary, secondary],
              ),
            ),
            child: Image.asset(icon, width: 20),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.tr,
                  style: TextStyle(
                    color: black,
                    fontSize: 15,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  subtitle.tr,
                  style: TextStyle(
                    color: black,
                    fontSize: 12,
                    fontWeight: regular,
                  ),
                ),
                Container(
                  height: 2,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [yellow, primary],
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(50),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              child: Text(
                'view_all'.tr,
                style: TextStyle(
                  color: black,
                  fontSize: 12,
                  fontWeight: regular,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
