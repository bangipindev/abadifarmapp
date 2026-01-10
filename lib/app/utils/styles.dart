import 'package:abadifarm/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class ThemesStyles {
  // Font Family
  static const String defaultFontFamily = 'Poppins'; // Contoh, bisa diganti

  // Text Styles (optional, forColor.fromARGB(221, 169, 19, 19) control)
  static TextStyle headlineStyle = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: defaultFontFamily,
    color: AppColors.textColor,
  );
  static TextStyle subtitleStyle = const TextStyle(
    fontSize: 18,
    fontFamily: defaultFontFamily,
    color: AppColors.textColor,
  );
  static TextStyle bodyStyle = const TextStyle(
    fontSize: 14,
    fontFamily: defaultFontFamily,
    color: AppColors.textColor,
  );
}
