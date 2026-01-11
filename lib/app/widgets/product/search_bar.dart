import 'package:abadifarm/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.baseBackgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          // ignore: deprecated_member_use
          color: AppColors.blurTextColor.withOpacity(0.4),
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: AppColors.blurTextColor),
          SizedBox(width: 12),
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: InputDecoration(
                hintText: 'Search by item code or name...',
                hintStyle: TextStyle(
                  // ignore: deprecated_member_use
                  color: AppColors.blurTextColor.withOpacity(0.6),
                ),
                border: InputBorder.none,
                isCollapsed: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
