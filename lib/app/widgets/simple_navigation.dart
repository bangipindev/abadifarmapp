import 'package:abadifarm/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleNavigation extends StatelessWidget {
  const SimpleNavigation({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: AppColors.navigationBarColor,
      selectedItemColor: Colors.blue, // 🔵 ACTIVE
      unselectedItemColor: Colors.grey, // ⚪ INACTIVE
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
      type: BottomNavigationBarType.fixed, // wajib jika > 3 item
      onTap: (index) {
        switch (index) {
          case 0:
            Get.offAllNamed('/home');
            break;
          case 1:
            Get.offAllNamed('/product');
            break;
          case 2:
            Get.offAllNamed('/reporting');
            break;
          case 3:
            Get.offAllNamed('/profile');
            break;
        }
      },
      elevation: 10,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.inventory_rounded),
          label: 'Product',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_rounded),
          label: 'Reporting',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Profile',
        ),
      ],
    );
  }
}
