import 'package:flutter/material.dart';

import 'constant.dart';

ThemeData Themes() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    fontFamily: "Lexend",
    textTheme: texttheme(),
    appBarTheme: appBarTheme(),
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6318AF)),
    //useMaterial3: true,
  );
}

TextTheme texttheme() {
  return const TextTheme(
    bodyLarge: TextStyle(color: kTextColor),
    bodyMedium: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    centerTitle: true,
    backgroundColor: kSecondaryColor,
    elevation: 0,
    titleTextStyle:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: kTextColor),
  );
}
