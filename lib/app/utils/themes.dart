import 'package:flutter/material.dart';

class ThemesConfig {
  // COLORS

  static const Color primaryBackgroundColor = Color(0xFF102216);
  static const Color secondaryBackgroundColor = Color(0xFF1a2c20);
  static const Color tersierBackgroundColor = Color(0xFFD9F5E2);
  static const Color baseBackgroundColor = Color(0xFFFDFDF5);

  static const Color primaryIconColor = Color(0xFF4B4B4B);
  static const Color seondaryIconColor = Color(0xFFDDD613);

  static const Color baseTextColor = Color(0xFF4B4B4B);
  static const Color primaryTextColor = Color(0xFF0F0F0F);
  static const Color secondaryTextColor = Color(0xFFDDD613);
  static const Color tersierTextColor = Color(0xFF02A631);

  static const Color accentColor = Colors.orangeAccent;
  static const Color textColor = Colors.black87;
  static const Color lightTextColor = Colors.white;
  static const Color blurTextColor = Color.fromARGB(255, 164, 163, 163);

  static const Color primaryButtonColor = Color(0xFFFFFFFF);
  static const Color secondaryButtonColor = Color(0xFF102216);

  static const Color activeNavigationBarColor = Color(0xFF102216);
  static const Color notActiveNavigationBarColor = Colors.grey;
  static const Color bottomNavigationBarBackgroundColor = Colors.white;

  static const Color primaryBorderColor = Colors.grey;

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

  /***
 * PADDING AND MARGIN
 */
  static const double padding_10 = 10.0;
  static const double padding_20 = 20.0;
  static const double padding_30 = 30.0;
  static const double padding_40 = 40.0;
  static const double padding_50 = 50.0;
  static const double padding_60 = 60.0;
  static const double padding_70 = 70.0;
  static const double padding_80 = 80.0;
  static const double padding_90 = 90.0;
  static const double padding_100 = 100.0;
}
