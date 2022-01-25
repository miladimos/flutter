import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData.light();
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.red,
  );

  static var currentTheme = lightTheme;
}