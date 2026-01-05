import 'package:abadifarm/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  final BestSellerModel product;

  const BestSellerItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
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

            const SizedBox(width: 12),

            // Nama & Terjual
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
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
