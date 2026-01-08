import 'package:abadifarm/app/utils/themes.dart';
import 'package:abadifarm/app/widgets/dashboard_stats.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reporting_controller.dart';

class ReportingView extends GetView<ReportingController> {
  const ReportingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/icons/hamburger.png"),
        title: const Text(
          'RPA Manager',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF2563EB),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Image.asset("assets/icons/notification.png"),
          ),
        ],
      ),
      backgroundColor: ThemesConfig.baseBackgroundColor,
      body: Container(padding: EdgeInsets.all(10), child: DashboardStats()),
    );
  }
}
