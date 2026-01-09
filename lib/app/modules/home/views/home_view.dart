import 'package:abadifarm/app/utils/themes.dart';
import 'package:abadifarm/app/utils/ui_sizes.dart';
import 'package:abadifarm/app/widgets/alert_card.dart';
import 'package:abadifarm/app/widgets/banner_dashboard.dart';
import 'package:abadifarm/app/widgets/best_seller.dart';
import 'package:abadifarm/app/widgets/kategori_item.dart';
import 'package:abadifarm/app/widgets/order_status.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    UiSizes.init(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // DashboardStats(),
          BannerSection(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Kategori",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: ThemesConfig.baseTextColor,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "",
                  style: TextStyle(
                    color: Color(0XFF059669),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    // WidgetSpan(
                    //   alignment: PlaceholderAlignment.middle,
                    //   child: Icon(
                    //     Icons.arrow_right,
                    //     size: 18,
                    //     color: Color(0xFF059669),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          KategoriWidget(),
          SizedBox(height: 10),
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
          ListView.builder(
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
          ListView(
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
          Column(
            children: controller.bestProducts
                .map((product) => BestSellerItem(product: product))
                .toList(),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class BannerSection extends GetView<HomeController> {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.banner.length,
          itemBuilder: (context, index) {
            final banner = controller.banner[index];
            return BannerDashboard(image: banner.image);
          },
        ),
      ),
    );
  }
}

class KategoriWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    if (controller.categories.isEmpty) {
      return const SizedBox.shrink();
    }

    if (controller.categories.length <= 4) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: controller.categories
            .map((category) => KategoriItem(category: category))
            .toList(),
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: controller.categories.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // 4 item per baris
        mainAxisSpacing: 0,
        crossAxisSpacing: 16,
        childAspectRatio: 0.85,
      ),
      itemBuilder: (context, index) {
        return KategoriItem(category: controller.categories[index]);
      },
    );
  }
}
