import 'package:abadifarm/app/utils/themes.dart';
import 'package:abadifarm/app/utils/ui_sizes.dart';
import 'package:abadifarm/app/widgets/alert_card.dart';
import 'package:abadifarm/app/widgets/banner_dashboard.dart';
import 'package:abadifarm/app/widgets/best_seller.dart';
import 'package:abadifarm/app/widgets/kategori_item.dart';
import 'package:abadifarm/app/widgets/new_order.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    UiSizes.init(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // DashboardStats(),
          BannerSection(),
          SizedBox(height: 30),
          KategoriSection(),
          SizedBox(height: 30),
          NewOrderWidget(),
          AlertSection(),
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
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(
                        Icons.arrow_right,
                        size: 12,
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

class KategoriSection extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    if (controller.categories.isEmpty) {
      return const SizedBox.shrink();
    }

    if (controller.categories.length <= 4) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: controller.categories
                .map((category) => KategoriItem(category: category))
                .toList(),
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Kategori",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: ThemesConfig.baseTextColor,
              ),
            ),
            RichText(
              text: TextSpan(
                text: "",
                style: TextStyle(
                  color: Color(0XFF059669),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        GridView.builder(
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
        ),
      ],
    );
  }
}

class AlertSection extends GetView<HomeController> {
  const AlertSection({super.key});

  @override
  Widget build(BuildContext context) {
    if (controller.alerts.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
              text: const TextSpan(
                text: "Lihat Semua",
                style: TextStyle(
                  color: Color(0XFF059669),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Icon(
                      Icons.arrow_right,
                      size: 12,
                      color: Color(0xFF059669),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 10),

        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.alerts.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: AlertItemCard(alert: controller.alerts[index]),
            );
          },
        ),
      ],
    );
  }
}
