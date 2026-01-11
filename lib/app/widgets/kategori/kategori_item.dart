import 'package:abadifarm/app/data/models/list_menu_category.dart';
import 'package:abadifarm/app/modules/main/controllers/main_controller.dart';
import 'package:abadifarm/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KategoriItem extends StatelessWidget {
  final ListMenuCategoryModel category;

  const KategoriItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (category.targetType == CategoryTargetType.tab) {
          print(category.tabIndex);
          // 👉 PINDAH TAB (dalam MainView)
          final controller = Get.find<MainController>();
          controller.changeIndex(category.tabIndex!);
          Get.offAllNamed(Routes.MAIN);
        } else {
          // 👉 PAGE FULL SCREEN (tanpa bottom nav)
          print(category.route);

          Get.toNamed(category.route!);
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(category.icon),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Text(
            category.label,
            style: TextStyle(fontSize: 11),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
