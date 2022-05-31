import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData theme = ThemeData(
    colorScheme: ThemeData().colorScheme.copyWith(
      primary: Colors.green,
    ),
  );
}

class Insets {
  // We explicitly type Insets as double to avoid automatic casting to int.
  static const double sm = 10;
  static const double med = 15;
  static const double lg = 25;
}

class TextStyles {
  static const TextStyle h1 = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static const TextStyle body = TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
}
