import 'package:flutter/material.dart';

class ThemesConfig {
  // Colors
  static const Color primaryColor = Color.fromARGB(255, 228, 23, 23); // Merah
  static const Color secondaryColor = Colors.yellow;
  static const Color accentColor = Colors.orangeAccent;
  static const Color textColor = Colors.black87;
  static const Color lightTextColor = Colors.white;

  static const Color activeNavigationBarColor = Colors.purple;
  static const Color notActiveNavigationBarColor = Colors.grey;
  static const Color bottomNavigationBarBackgroundColor = Colors.white;

  // Font Family
  static const String defaultFontFamily = 'Poppins'; // Contoh, bisa diganti

  // Text Styles (optional, forColor.fromARGB(221, 169, 19, 19) control)
  static TextStyle headlineStyle = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: defaultFontFamily,
    color: textColor,
  );
  static TextStyle subtitleStyle = const TextStyle(
    fontSize: 18,
    fontFamily: defaultFontFamily,
    color: textColor,
  );
  static TextStyle bodyStyle = const TextStyle(
    fontSize: 14,
    fontFamily: defaultFontFamily,
    color: textColor,
  );
}
