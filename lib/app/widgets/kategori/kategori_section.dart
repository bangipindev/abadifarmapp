import 'package:abadifarm/app/core/values/app_colors.dart';
import 'package:abadifarm/app/modules/home/controllers/home_controller.dart';
import 'package:abadifarm/app/widgets/kategori/kategori_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                  color: AppColors.baseTextColor,
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
          SizedBox(height: 30),
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
                color: AppColors.baseTextColor,
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
