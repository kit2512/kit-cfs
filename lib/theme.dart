import 'package:flutter/material.dart';

class AppTheme {
  static TextTheme textTheme() {
    return TextTheme();
  }

  static ThemeData theme() {
    return ThemeData(
      fontFamily: "IndieFlower",
      primarySwatch: Colors.red,
      primaryColor: Colors.red,
      textTheme: textTheme(),
    );
  }
}
