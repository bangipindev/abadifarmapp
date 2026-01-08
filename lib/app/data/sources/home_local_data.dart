import 'package:abadifarm/app/data/models/list_menu_category.dart';
import 'package:abadifarm/app/routes/app_pages.dart';
import 'package:abadifarm/app/widgets/order_status.dart';
import 'package:flutter/material.dart';
import '../models/alert_model.dart';
import '../models/order_model.dart';
import '../models/best_seller_model.dart';

class HomeLocalData {
  static List<AlertModel> alerts = [
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
  ];

  static List<OrderModel> orders = [
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
  ];

  static List<BestSellerModel> bestProducts = [
    BestSellerModel(
      name: 'Ayam Karkas',
      soldText: '156 kg terjual',
      price: 'Rp 3.2jt',
      iconBg: const Color(0xFFE8F7F0),
      iconColor: Colors.green,
      icon: Icons.restaurant,
    ),
  ];

  static List<ListMenuCategoryModel> categories = [
    ListMenuCategoryModel(
      icon: 'assets/logo/logos.png',
      label: 'Produk',
      route: Routes.INVENTORY,
    ),
    ListMenuCategoryModel(
      icon: 'assets/logo/logos.png',
      label: 'Vendor',
      route: Routes.REPORTING,
    ),
    ListMenuCategoryModel(
      icon: 'assets/logo/logos.png',
      label: 'Konsumen',
      route: Routes.TRANSACTION,
    ),
    ListMenuCategoryModel(
      icon: 'assets/logo/logos.png',
      label: 'Asset',
      route: Routes.HOME,
    ),
  ];
}
