import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerDashboard extends StatelessWidget {
  const BannerDashboard({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: Get.width * 0.7,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(5, 10), // x, y
          ),
        ],
      ),
      child: Image.asset(image, fit: BoxFit.cover),
    );
  }
}
