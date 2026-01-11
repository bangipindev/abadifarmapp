import 'package:flutter/material.dart';

class QuickActionModel {
  final String title;
  final Widget icon;
  final Color bgColor;
  final Color iconColor;
  final VoidCallback? onTap;

  QuickActionModel({
    required this.title,
    required this.icon,
    required this.bgColor,
    required this.iconColor,
    this.onTap,
  });
}
