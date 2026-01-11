import 'package:abadifarm/app/data/models/quick_action.dart';
import 'package:flutter/material.dart';

class QuickActionCard extends StatelessWidget {
  final QuickActionModel data;

  const QuickActionCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: data.onTap,
      child: Container(
        // width: Get.width * 0.25,
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Circle Icon
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: data.bgColor,
                shape: BoxShape.circle,
              ),
              // child: Icon(icon, color: iconColor, size: 22),
              child: Center(child: data.icon),
            ),
            const SizedBox(height: 10),
            Text(
              data.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1F2937),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
