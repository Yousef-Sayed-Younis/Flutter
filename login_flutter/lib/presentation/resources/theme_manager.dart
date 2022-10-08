import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // Scaffold Theme
    scaffoldBackgroundColor: Colors.grey[300],

    // Text Theme
    textTheme: const TextTheme(
      headlineSmall: TextStyle(fontSize: 20),
      titleLarge: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 36),
      labelLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      labelMedium: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
    ),

    // Text Field
    inputDecorationTheme: const InputDecorationTheme(border: InputBorder.none),
  );
}
