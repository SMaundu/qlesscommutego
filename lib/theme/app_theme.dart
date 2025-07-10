import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF1217E7),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF1217E7),
      secondary: Color(0xFFF7A309),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF1217E7),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF1217E7),
      secondary: Color(0xFFF7A309),
    ),
  );
}
