import 'package:abadifarm/app/utils/themes.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomNavigation extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with TickerProviderStateMixin {
  late AnimationController _hideBottomBarAnimationController;

  final List<IconData> iconList = const [
    Icons.home_rounded,
    Icons.inventory_rounded,
    Icons.cut_rounded,
    Icons.bar_chart_rounded,
    Icons.person_rounded,
  ];

  final List<String> labels = const [
    'Home',
    'Stok',
    'Transaksi',
    'Laporan',
    'Akun Saya',
  ];

  @override
  void initState() {
    super.initState();
    _hideBottomBarAnimationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _hideBottomBarAnimationController.dispose();
    super.dispose();
  }

  bool onScrollNotification(ScrollNotification notification) {
    if (notification is UserScrollNotification &&
        notification.metrics.axis == Axis.vertical) {
      if (notification.direction == ScrollDirection.reverse) {
        _hideBottomBarAnimationController.forward();
      } else if (notification.direction == ScrollDirection.forward) {
        _hideBottomBarAnimationController.reverse();
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      itemCount: iconList.length,
      tabBuilder: (int index, bool isActive) {
        final color = isActive
            ? ThemesConfig.activeNavigationBarColor
            : ThemesConfig.notActiveNavigationBarColor;

        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconList[index], size: isActive ? 26 : 24, color: color),
            const SizedBox(height: 4),
            Text(
              labels[index],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: color,
                fontSize: 11,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        );
      },
      activeIndex: widget.currentIndex,
      gapLocation: GapLocation.none,
      notchSmoothness: NotchSmoothness.defaultEdge,
      onTap: widget.onTap,
      backgroundColor: ThemesConfig.bottomNavigationBarBackgroundColor,
      hideAnimationController: _hideBottomBarAnimationController,
    );
  }
}
