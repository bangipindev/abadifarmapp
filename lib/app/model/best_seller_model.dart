import 'package:flutter/material.dart';

class BestSellerModel {
  final String name;
  final String soldText;
  final String price;
  final Color iconBg;
  final Color iconColor;
  final IconData icon;

  BestSellerModel({
    required this.name,
    required this.soldText,
    required this.price,
    required this.iconBg,
    required this.iconColor,
    required this.icon,
  });
}
