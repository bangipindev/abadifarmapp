import 'package:abadifarm/app/data/models/add_produk.dart';
import 'package:abadifarm/app/data/models/banner_home.dart';
import 'package:abadifarm/app/data/models/list_menu_category.dart';
import 'package:abadifarm/app/data/models/stock_barang_model.dart';
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
      icon: 'assets/icon/icon.png',
      label: 'Produk',
      route: Routes.INVENTORY,
    ),
    ListMenuCategoryModel(
      icon: 'assets/icon/icon.png',
      label: 'Vendor',
      route: Routes.REPORTING,
    ),
    ListMenuCategoryModel(
      icon: 'assets/icon/icon.png',
      label: 'Konsumen',
      route: Routes.TRANSACTION,
    ),
    ListMenuCategoryModel(
      icon: 'assets/icon/icon.png',
      label: 'Asset',
      route: Routes.HOME,
    ),
    ListMenuCategoryModel(
      icon: 'assets/icon/icon.png',
      label: 'Kegiatan',
      route: Routes.INVENTORY,
    ),
    ListMenuCategoryModel(
      icon: 'assets/icon/icon.png',
      label: 'Karkas',
      route: Routes.REPORTING,
    ),
    ListMenuCategoryModel(
      icon: 'assets/icon/icon.png',
      label: 'Sampingan',
      route: Routes.TRANSACTION,
    ),
    ListMenuCategoryModel(
      icon: 'assets/icon/icon.png',
      label: 'Lainnya',
      route: Routes.HOME,
    ),
  ];

  static List<ListBannerHomeModel> banner = [
    ListBannerHomeModel(image: 'assets/images/banner1.png'),
    ListBannerHomeModel(image: 'assets/images/banner1.png'),
    ListBannerHomeModel(image: 'assets/images/banner1.png'),
    ListBannerHomeModel(image: 'assets/images/banner1.png'),
  ];

  static List<Product> products = [
    Product(
      name: "Nike Air Max 90",
      variant: "Size 42 • Merah",
      price: 1500000,
    ),
    Product(
      name: "Cotton T-Shirt Basic",
      variant: "Size L • Putih",
      price: 150000,
      qty: 2,
    ),
  ];

  static List<Barang> barang = [
    Barang(
      sku: 'SKU-001',
      name: 'Kemeja Flanel Slim Fit',
      stock: 42,
      price: 150000,
      image: 'assets/icon/icon.png',
      status: StockStatus.tersedia,
    ),
    Barang(
      sku: 'SKU-002',
      name: 'Sepatu Sneakers Putih',
      stock: 5,
      price: 450000,
      image: 'assets/icon/icon.png',
      status: StockStatus.stokRendah,
    ),
    Barang(
      sku: 'SKU-003',
      name: 'Dompet Kulit Eksklusif',
      stock: 0,
      price: 225000,
      image: 'assets/icon/icon.png',
      status: StockStatus.habis,
    ),
    Barang(
      sku: 'SKU-004',
      name: 'Jam Tangan Analog Classic',
      stock: 12,
      price: 1200000,
      image: 'assets/icon/icon.png',
      status: StockStatus.tersedia,
    ),
    Barang(
      sku: 'SKU-005',
      name: 'Ayam Karkas 1 Kg',
      stock: 42,
      price: 150000,
      image: 'assets/icon/icon.png',
      status: StockStatus.tersedia,
    ),
    Barang(
      sku: 'SKU-006',
      name: 'Kepala Ceker',
      stock: 5,
      price: 450000,
      image: 'assets/icon/icon.png',
      status: StockStatus.stokRendah,
    ),
    Barang(
      sku: 'SKU-007',
      name: 'Ayam Ingkung Joper',
      stock: 0,
      price: 225000,
      image: 'assets/icon/icon.png',
      status: StockStatus.habis,
    ),
    Barang(
      sku: 'SKU-008',
      name: 'Telur Ayam',
      stock: 12,
      price: 1200000,
      image: 'assets/icon/icon.png',
      status: StockStatus.tersedia,
    ),
  ];
}
