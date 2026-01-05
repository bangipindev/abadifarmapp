import 'package:abadifarm/app/utils/themes.dart';
import 'package:flutter/material.dart';

class ProductCategoryFilter extends StatefulWidget {
  const ProductCategoryFilter({super.key});

  @override
  State<ProductCategoryFilter> createState() => _ProductCategoryFilterState();
}

class _ProductCategoryFilterState extends State<ProductCategoryFilter> {
  final List<String> categories = [
    'Semua',
    'Ayam Hidup',
    'Karkas',
    'Boneless',
    'Sayap',
    'Sampingan',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final bool isActive = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: isActive
                    ? const Color(0xFF22E66A) // active green
                    : ThemesConfig.primaryButtonColor, // dark green
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: isActive
                      ? Colors.transparent
                      // ignore: deprecated_member_use
                      : Colors.white.withOpacity(0.1),
                ),
              ),
              child: Center(
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: isActive ? Colors.black : Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
