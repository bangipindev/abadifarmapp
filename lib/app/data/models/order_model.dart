import 'package:abadifarm/app/widgets/neworder/order_status.dart';
import 'package:flutter/material.dart';

class OrderModel {
  final String title;
  final String subtitle;
  final String price;
  final OrderStatus status;
  final IconData icon;

  OrderModel({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.status,
    required this.icon,
  });
}
