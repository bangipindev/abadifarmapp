import 'package:abadifarm/app/modules/home/views/home_view.dart';
import 'package:abadifarm/app/modules/inventory/views/inventory_view.dart';
import 'package:abadifarm/app/modules/profile/views/profile_view.dart';
import 'package:abadifarm/app/modules/reporting/views/reporting_view.dart';
import 'package:abadifarm/app/modules/transaction/views/transaction_view.dart';
import 'package:abadifarm/app/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Color(0XFFF9FAFB),
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: [
            HomeView(),
            InventoryView(),
            TransactionView(),
            ReportingView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: BottomNavigation(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeIndex,
        ),
      ),
    );
  }
}
