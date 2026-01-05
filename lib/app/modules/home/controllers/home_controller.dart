import 'package:abadifarm/app/widgets/order_status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

class HomeController extends GetxController {
  final List<AlertModel> alerts = [
    AlertModel(
      backgroundColor: const Color(0xFFFFEBEB),
      borderColor: const Color(0xFFFFCACA),
      icon: Icons.warning_amber_rounded,
      iconColor: Colors.red,
      title: 'Stok Ayam Menipis',
      titleColor: Colors.red,
      description: 'Tersisa 150 ekor ayam broiler. Segera lakukan restocking.',
    ),
    AlertModel(
      backgroundColor: const Color(0xFFFFF8E1),
      borderColor: const Color(0xFFFFECB3),
      icon: Icons.access_time,
      iconColor: Colors.orange,
      title: 'Pesanan Menunggu',
      titleColor: Colors.orange,
      description: '3 pesanan menunggu konfirmasi pengiriman.',
    ),
  ].obs;

  final orders = <OrderModel>[
    OrderModel(
      title: 'Warung Bu Sari',
      subtitle: '50 ekor ayam potong',
      price: '2.5M',
      status: OrderStatus.proses,
      icon: Icons.store,
    ),
    OrderModel(
      title: 'Hotel Santika',
      subtitle: '100 ekor ayam utuh',
      price: '8.5M',
      status: OrderStatus.selesai,
      icon: Icons.apartment,
    ),
    OrderModel(
      title: 'Restoran Padang',
      subtitle: '75 ekor ayam kampung',
      price: '6.8M',
      status: OrderStatus.baru,
      icon: Icons.restaurant,
    ),
  ].obs;

  final bestproducts = <BestSellerModel>[
    BestSellerModel(
      name: 'Ayam Karkas',
      soldText: '156 kg terjual',
      price: 'Rp 3.2jt',
      iconBg: const Color(0xFFE8F7F0),
      iconColor: Colors.green,
      icon: Icons.restaurant,
    ),
    BestSellerModel(
      name: 'Ayam Frozen',
      soldText: '89 kg terjual',
      price: 'Rp 2.1jt',
      iconBg: const Color(0xFFEAF1FF),
      iconColor: Colors.blue,
      icon: Icons.ac_unit,
    ),
    BestSellerModel(
      name: 'Ayam Potong',
      soldText: '124 kg terjual',
      price: 'Rp 2.8jt',
      iconBg: const Color(0xFFFFF1E6),
      iconColor: Colors.deepOrange,
      icon: Icons.local_fire_department,
    ),
  ].obs;
}
