import 'package:flutter/material.dart';

class ThemeDataStyle {

  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.green,
      primary: Colors.white,
      secondary: Colors.white,
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Colors.blue,
      primary: Colors.deepPurpleAccent.shade400,
      secondary: Colors.black26,
    ),
  );

}