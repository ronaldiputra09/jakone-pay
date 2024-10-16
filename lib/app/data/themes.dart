import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jakone_pay/app/data/colors.dart';
import 'package:jakone_pay/app/data/fonts.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light(primary: primary),
    appBarTheme: AppBarTheme(
      backgroundColor: primary,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
      titleSpacing: 0,
      titleTextStyle: primaryFont.copyWith(
        fontSize: 16.0,
        fontWeight: bold,
        color: black,
      ),
      centerTitle: true,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: black,
      ),
    ),
    textTheme: TextTheme(
      bodySmall: primaryFont.copyWith(
        color: black,
        fontSize: 14.0,
      ),
      bodyMedium: primaryFont.copyWith(
        color: black,
        fontSize: 14.0,
      ),
      bodyLarge: primaryFont.copyWith(
        color: black,
        fontSize: 14.0,
      ),
    ),
    dialogTheme: DialogTheme(
      titleTextStyle: primaryFont.copyWith(
        fontSize: 16.0,
        fontWeight: bold,
        color: black,
      ),
      contentTextStyle: primaryFont.copyWith(
        fontSize: 14.0,
        color: black,
      ),
    ),
    listTileTheme: ListTileThemeData(
      titleTextStyle: primaryFont.copyWith(
        fontSize: 14.0,
        fontWeight: bold,
        color: black,
      ),
      subtitleTextStyle: primaryFont.copyWith(
        fontSize: 14.0,
        color: black,
      ),
    ),
  );
}
