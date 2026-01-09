import 'package:abadifarm/app/data/models/list_menu_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class KategoriItem extends StatelessWidget {
//   final ListMenuCategoryModel category;

//   const KategoriItem({required this.category});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () => Get.toNamed(category.route),
//       child: Column(
//         children: [
//           Container(
//             height: 50,
//             width: 50,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: Image.asset(category.icon, height: 28),
//           ),
//           const SizedBox(height: 5),
//           Text(category.label, style: const TextStyle(fontSize: 12)),
//         ],
//       ),
//     );
//   }
// }

class KategoriItem extends StatelessWidget {
  final ListMenuCategoryModel category;

  const KategoriItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(category.route),
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
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
