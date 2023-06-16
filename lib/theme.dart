import 'package:flutter/material.dart';

const primaryColor = Color(0xFF614FE0);
const colorAccent = Color(0xFFFFBF5C);
const textColor = Color(0xFF0E0E10);
const lightGray = Color(0xFFCFCFCF);
const secondaryHeaderColor = Color(0xFFFF7C5A);
const dividerColor = Color(0x1A0E0E10);
const scaffoldBackGroundColor = Color(0xFFFFFFFF);
const shadowColor = Color(0xFFCFCFCF);
const hintColor = Color(0xFF0E0E10);
const disabledText = Color(0xFFB7B7B8);
const canvasColor = Color(0xFFF25B5B);

ThemeData lightTheme = ThemeData(
  tabBarTheme: const TabBarTheme(
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        color: primaryColor,
        width: 2,
      ),
    ),
  ),
  brightness: Brightness.light,
  primaryColor: primaryColor,
  dividerColor: lightGray,
  shadowColor: shadowColor,
  hintColor: hintColor,
  focusColor: lightGray,
  canvasColor: canvasColor,
  unselectedWidgetColor: disabledText,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: scaffoldBackGroundColor,
    elevation: 0,
  ),
  fontFamily: "NotoSans-SemiBold",
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      color: textColor,
      fontSize: 18,
    ),
    bodyMedium: TextStyle(
      color: textColor,
      fontSize: 24,
    ),
    bodyLarge: TextStyle(
      color: textColor,
      fontSize: 32,
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
      color: textColor,
      fontSize: 32,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.bold,
      color: textColor,
      fontSize: 24,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.bold,
      color: textColor,
      fontSize: 18,
    ),
    headlineLarge: TextStyle(
      color: textColor,
      fontFamily: "NotoSans-Medium",
      fontSize: 32,
    ),
    headlineMedium: TextStyle(
      color: textColor,
      fontFamily: "NotoSans-Medium",
      fontSize: 24,
    ),
    headlineSmall: TextStyle(
      color: textColor,
      fontFamily: "NotoSans-Medium",
      fontSize: 18,
    ),
  ),
  scaffoldBackgroundColor: scaffoldBackGroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: scaffoldBackGroundColor,
    elevation: 0,
  ),
);

ThemeData darkTheme = ThemeData(
  tabBarTheme: const TabBarTheme(
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        color: primaryColor,
        width: 2,
      ),
    ),
  ),
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  shadowColor: shadowColor,
  secondaryHeaderColor: secondaryHeaderColor,
  dividerColor: dividerColor,
  fontFamily: "NotoSans-Medium",
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: scaffoldBackGroundColor,
      fontSize: 32,
    ),
    bodyMedium: TextStyle(
      color: scaffoldBackGroundColor,
      fontSize: 24,
    ),
    bodySmall: TextStyle(
      color: scaffoldBackGroundColor,
      fontSize: 18,
    ),
    titleLarge: TextStyle(
      color: scaffoldBackGroundColor,
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),
    titleMedium: TextStyle(
      color: scaffoldBackGroundColor,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    titleSmall: TextStyle(
      color: scaffoldBackGroundColor,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    headlineLarge: TextStyle(
      color: scaffoldBackGroundColor,
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),
    headlineMedium: TextStyle(
      color: scaffoldBackGroundColor,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    headlineSmall: TextStyle(
      color: scaffoldBackGroundColor,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
  ),
  scaffoldBackgroundColor: textColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: textColor,
    elevation: 0,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: scaffoldBackGroundColor,
    elevation: 0,
  ),
);
