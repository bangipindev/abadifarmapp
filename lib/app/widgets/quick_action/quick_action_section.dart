import 'package:abadifarm/app/core/values/app_colors.dart';
import 'package:abadifarm/app/core/values/app_sizes.dart';
import 'package:abadifarm/app/modules/home/controllers/home_controller.dart';
import 'package:abadifarm/app/widgets/quick_action/quick_action_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuickActionSection extends GetView<HomeController> {
  const QuickActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    if (controller.alerts.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Aksi Cepat",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColors.baseTextColor,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(AppSizes.size_12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.quickaction.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 0.9, // atur tinggi
            ),
            itemBuilder: (_, index) {
              return QuickActionCard(data: controller.quickaction[index]);
            },
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
