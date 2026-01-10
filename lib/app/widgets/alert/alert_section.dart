import 'package:abadifarm/app/core/values/app_colors.dart';
import 'package:abadifarm/app/core/values/app_sizes.dart';
import 'package:abadifarm/app/modules/home/controllers/home_controller.dart';
import 'package:abadifarm/app/widgets/alert/alert_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                color: AppColors.baseTextColor,
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

        SizedBox(height: 10),

        Container(
          padding: EdgeInsets.all(AppSizes.size_12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListView.builder(
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
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
