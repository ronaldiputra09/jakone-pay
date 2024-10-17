import 'package:flutter/material.dart';
import 'package:jakone_pay/app/data/colors.dart';
import 'package:jakone_pay/app/data/fonts.dart';
import 'package:get/get.dart';

class Menu extends StatelessWidget {
  String icon;
  String title;
  Menu({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [yellow, primary],
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(2),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [white.withOpacity(0.5), white],
                ),
              ),
              child: Center(
                child: Image.asset(
                  icon,
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title.tr,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: black,
              fontSize: 9,
              fontWeight: regular,
            ),
          ),
        ],
      ),
    );
  }
}
