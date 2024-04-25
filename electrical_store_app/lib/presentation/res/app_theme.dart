import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/constants.dart';

class AppTheme {
  static ThemeMode themeMode = ThemeMode.light;

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      primaryColor: Colors.white, // Product Card Color
      primaryColorLight: kBackgroundColor, // Background Color
      textTheme: Typography.blackCupertino, // Text Color
      highlightColor: kTextLightColor, // Dot Selection Color

      scaffoldBackgroundColor: kPrimaryColor,
      //
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        foregroundColor: kPrimaryColor, // Icon Color
        backgroundColor: Colors.transparent,

        titleTextStyle: TextStyle(color: Colors.black, fontSize: 22),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,

      primaryColor: Colors.grey, // Product Card Color
      textTheme: Typography.whiteCupertino, // Text Color
      primaryColorLight: Color.fromARGB(255, 142, 141, 127), // Background Color
      highlightColor: Colors.white, // Dot Selection Color

      scaffoldBackgroundColor: Color.fromRGBO(23, 108, 129, 1),
      //
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Color.fromRGBO(23, 108, 129, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
      ),
    );
  }

  static void changeThemeMode() => Get.changeThemeMode(themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
}
