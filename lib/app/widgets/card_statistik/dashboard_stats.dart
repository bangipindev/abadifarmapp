import 'package:abadifarm/app/widgets/card_statistik/card_stats.dart';
import 'package:flutter/material.dart';

class DashboardStats extends StatelessWidget {
  const DashboardStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.5,
          children: const [
            StatCard(
              title: 'Ayam Hidup',
              value: '1,250',
              icon: Icons.pets,
              gradientColors: [Color(0xFF22C55E), Color(0xFF16A34A)],
            ),
            StatCard(
              title: 'Dipotong Hari Ini',
              value: '85',
              icon: Icons.content_cut,
              gradientColors: [Color(0xFF3B82F6), Color(0xFF2563EB)],
            ),
            StatCard(
              title: 'Pendapatan',
              value: 'Rp 12.5M',
              icon: Icons.attach_money,
              gradientColors: [Color(0xFFF97316), Color(0xFFEA580C)],
            ),
            StatCard(
              title: 'Pesanan Aktif',
              value: '23',
              icon: Icons.shopping_cart,
              gradientColors: [Color(0xFFA855F7), Color(0xFF9333EA)],
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
