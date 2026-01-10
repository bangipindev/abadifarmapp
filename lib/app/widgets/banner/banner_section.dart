import 'package:abadifarm/app/modules/home/controllers/home_controller.dart';
import 'package:abadifarm/app/widgets/banner/banner_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerSection extends GetView<HomeController> {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
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
        SizedBox(height: 30),
      ],
    );
  }
}
