
import 'package:flutter/material.dart';

class AppTheme {
  static const Color seedColor = Colors.indigo;

  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.light,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: false,
    ),
    cardTheme: const CardThemeData(
      elevation: 2,
      margin: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.dark,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: false,
    ),
    cardTheme: const CardThemeData(
      elevation: 2,
      margin: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
    ),
  );
}
