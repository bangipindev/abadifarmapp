import 'package:abadifarm/app/modules/home/controllers/home_controller.dart';
import 'package:abadifarm/app/utils/themes.dart';
import 'package:abadifarm/app/widgets/order_status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewOrderWidget extends GetView<HomeController> {
  const NewOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                style: const TextStyle(
                  color: Color(0XFF059669),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                children: const [
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

        const SizedBox(height: 20),
      ],
    );
  }
}
