import 'package:abadifarm/app/core/values/app_colors.dart';
import 'package:abadifarm/app/core/values/app_sizes.dart';
import 'package:abadifarm/app/modules/home/controllers/home_controller.dart';
import 'package:abadifarm/app/widgets/bestseller/best_seller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BestSellerSection extends GetView<HomeController> {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Produk Terlaris',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColors.baseTextColor,
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
        SizedBox(height: AppSizes.height_10),
        Container(
          padding: EdgeInsets.all(AppSizes.size_12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: controller.bestProducts
                .map((product) => BestSellerItem(product: product))
                .toList(),
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
