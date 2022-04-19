import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.white,
        letterSpacing: 2,
        fontFamily: 'SourceSansPro',
      ),
    ),
  );
}
