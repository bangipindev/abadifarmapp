import 'package:abadifarm/app/utils/app_images.dart';
import 'package:abadifarm/app/utils/themes.dart';
import 'package:abadifarm/app/utils/ui_sizes.dart';
import 'package:abadifarm/app/widgets/alert_card.dart';
import 'package:abadifarm/app/widgets/best_seller.dart';
import 'package:abadifarm/app/widgets/dashboard_stats.dart';
import 'package:abadifarm/app/widgets/order_status.dart';
import 'package:abadifarm/app/widgets/quick_action_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key}) {
    Get.put(HomeController());
  }

  @override
  Widget build(BuildContext context) {
    UiSizes.init(context);
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu, color: ThemesConfig.primaryIconColor),
        title: Text(
          'Abadi Farm App',
          style: TextStyle(
            color: ThemesConfig.baseTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: ThemesConfig.baseBackgroundColor,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(
              Icons.notifications_active_rounded,
              color: ThemesConfig.primaryIconColor,
            ),
          ),
        ],
      ),
      backgroundColor: ThemesConfig.baseBackgroundColor,
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          return false;
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardStats(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pesanan Terbaru",
                    style: TextStyle(
                      color: ThemesConfig.baseTextColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Lihat Semua",
                      style: TextStyle(
                        color: Color(0XFF059669),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Icon(
                            Icons.arrow_right,
                            size: 18,
                            color: Color(0xFF059669),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.orders.length,
                  itemBuilder: (context, index) {
                    final order = controller.orders[index];
                    return OrderItemCard(
                      title: order.title,
                      subtitle: order.subtitle,
                      price: order.price,
                      status: order.status,
                      icon: order.icon,
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Aksi Cepat',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: ThemesConfig.baseTextColor,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuickActionCard(
                    title: "Potong Ayam",
                    icon: Icon(Icons.cut, color: Colors.red, size: 20),
                    bgColor: Color(0xFFFEE2E2),
                    iconColor: Colors.red,
                    onTap: () {},
                  ),
                  QuickActionCard(
                    title: "Buat Pesanan",
                    icon: Image.asset(AppImages.shoppingCart),
                    bgColor: Color(0xFFDBEAFE),
                    iconColor: Colors.blue,
                    onTap: () {},
                  ),
                  QuickActionCard(
                    title: "Kiriman",
                    icon: Image.asset(AppImages.expedisi),
                    bgColor: Color(0xFFDCFCE7),
                    iconColor: Colors.green,
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Peringatan",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: ThemesConfig.baseTextColor,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Lihat Semua",
                      style: TextStyle(
                        color: Color(0XFF059669),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Icon(
                            Icons.arrow_right,
                            size: 18,
                            color: Color(0xFF059669),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Obx(
                () => ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: controller.alerts
                      .map(
                        (alert) => Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: AlertCard(alert: alert),
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Produk Terlaris',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: ThemesConfig.baseTextColor,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Lihat Semua",
                      style: TextStyle(
                        color: Color(0XFF059669),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Icon(
                            Icons.arrow_right,
                            size: 18,
                            color: Color(0xFF059669),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: ThemesConfig.padding_10),
              Obx(
                () => Column(
                  children: controller.bestproducts
                      .map((product) => BestSellerItem(product: product))
                      .toList(),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
