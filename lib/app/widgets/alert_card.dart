import 'package:abadifarm/app/data/models/alert_model.dart';
import 'package:flutter/material.dart';

class AlertCard extends StatelessWidget {
  final AlertModel alert;

  const AlertCard({super.key, required this.alert});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: alert.backgroundColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: alert.borderColor),
      ),
      child: Row(
        children: [
          Icon(alert.icon, color: alert.iconColor),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  alert.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: alert.titleColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(alert.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
