import 'package:flutter/material.dart';

class AlertModel {
  final Color backgroundColor;
  final Color borderColor;
  final IconData icon;
  final Color iconColor;
  final String title;
  final Color titleColor;
  final String description;

  AlertModel({
    required this.backgroundColor,
    required this.borderColor,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.titleColor,
    required this.description,
  });
}
