import 'package:abadifarm/app/core/values/app_colors.dart';
import 'package:abadifarm/app/core/values/app_sizes.dart';
import 'package:abadifarm/app/data/models/best_seller_model.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  final BestSellerModel product;

  const BestSellerItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: AppSizes.width_10),
      decoration: BoxDecoration(
        color: AppColors.backgroundWhite,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            // Icon
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: product.iconBg,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(product.icon, color: product.iconColor),
            ),
            SizedBox(width: AppSizes.size_12),
            // Nama & Terjual
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 4),
                  Text(
                    product.soldText,
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
            // Harga
            Text(
              product.price,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: product.iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
