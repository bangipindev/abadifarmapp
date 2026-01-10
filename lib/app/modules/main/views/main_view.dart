import 'package:abadifarm/app/core/values/app_colors.dart';
import 'package:abadifarm/app/modules/home/views/home_view.dart';
import 'package:abadifarm/app/modules/product/views/product_view.dart';
import 'package:abadifarm/app/modules/profile/views/profile_view.dart';
import 'package:abadifarm/app/modules/reporting/views/reporting_view.dart';
// import 'package:abadifarm/app/modules/transaction/views/transaction_view.dart';
import 'package:abadifarm/app/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/main_controller.dart';

// class MainView extends GetView<MainController> {
class MainView extends GetView<MainController> {
  MainView({super.key});

  final pagesMenu = [
    HomeView(),
    ProductView(),
    // TransactionView(),
    ReportingView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(
            'Abadi Farm App',
            style: TextStyle(
              color: AppColors.baseTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 25.0),
              child: Icon(
                Icons.notifications_active_rounded,
                color: AppColors.primaryIconColor,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: IndexedStack(
            index: controller.currentIndex.value,
            children: pagesMenu,
          ),
        ),
        bottomNavigationBar: BottomNavigation(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeIndex,
        ),
      ),
    );
  }
}
