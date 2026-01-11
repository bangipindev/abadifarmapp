import 'package:abadifarm/app/core/values/app_colors.dart';
import 'package:abadifarm/app/widgets/simple_navigation.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  final int currentIndex;
  final String title;

  const MainLayout({
    super.key,
    required this.title,
    required this.child,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: AppColors.appbarColor,
      ),
      body: child,
      bottomNavigationBar: SimpleNavigation(currentIndex: currentIndex),
    );
  }
}
