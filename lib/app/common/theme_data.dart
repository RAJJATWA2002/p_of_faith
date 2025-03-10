import 'package:flutter/material.dart';
import 'package:p_of_faith/app/common/colors.dart';

class MThemeData {
  static ThemeData themeData() {
    return ThemeData(
      //fontFamily: 'Salsa',
      primaryColor: primaryColor,
      secondaryHeaderColor: primaryLite,
      hintColor: hintColor,
      focusColor: textFieldColor, // TextColor
      hoverColor: primaryColor,
      highlightColor: primaryColor, // primary3Color
      unselectedWidgetColor: primaryColor,
      cardColor: const Color(0xFFFFFFFF),
      cardTheme: CardTheme(
        surfaceTintColor: Colors.white,
      ), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: const Color(0xff0054B4)), // primary3Color
    );
  }
}
