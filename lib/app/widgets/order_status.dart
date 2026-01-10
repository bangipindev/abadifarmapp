import 'package:abadifarm/app/utils/themes.dart';
import 'package:flutter/material.dart';

enum OrderStatus { baru, proses, selesai }

class OrderItemCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final OrderStatus status;
  final IconData icon;

  const OrderItemCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.status,
    required this.icon,
  });

  Color get statusBg {
    switch (status) {
      case OrderStatus.proses:
        return const Color(0xFFFEF3C7);
      case OrderStatus.selesai:
        return const Color(0xFFDCFCE7);
      case OrderStatus.baru:
        return const Color(0xFFDBEAFE);
    }
  }

  Color get statusText {
    switch (status) {
      case OrderStatus.proses:
        return const Color(0xFFD97706);
      case OrderStatus.selesai:
        return const Color(0xFF16A34A);
      case OrderStatus.baru:
        return const Color(0xFF2563EB);
    }
  }

  String get statusLabel {
    switch (status) {
      case OrderStatus.proses:
        return 'Proses';
      case OrderStatus.selesai:
        return 'Selesai';
      case OrderStatus.baru:
        return 'Baru';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ThemesConfig.backgroundWhite,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xFFF3F4F6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, size: 20, color: const Color(0xFF374151)),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: ThemesConfig.primaryTextColor,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    color: ThemesConfig.baseTextColor,
                  ),
                ),
              ],
            ),
          ),

          // Harga & status
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: statusBg,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  statusLabel,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: statusText,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
