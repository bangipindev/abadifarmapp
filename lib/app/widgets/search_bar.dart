import 'package:abadifarm/app/utils/themes.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 48,
      decoration: BoxDecoration(
        color: ThemesConfig.baseBackgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          // ignore: deprecated_member_use
          color: ThemesConfig.blurTextColor.withOpacity(0.4),
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: ThemesConfig.blurTextColor),
          SizedBox(width: 12),
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: InputDecoration(
                hintText: 'Search by item code or name...',
                hintStyle: TextStyle(
                  // ignore: deprecated_member_use
                  color: ThemesConfig.blurTextColor.withOpacity(0.6),
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
