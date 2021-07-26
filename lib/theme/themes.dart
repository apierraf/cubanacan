import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.white,
    appBarTheme: appBarTheme,
  );
  final darkTheme = ThemeData.dark();
}

AppBarTheme appBarTheme = AppBarTheme(
    color: Colors.transparent, elevation: 0, brightness: Brightness.light);
