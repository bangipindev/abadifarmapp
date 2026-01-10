import 'package:abadifarm/app/widgets/card_statistik/dashboard_stats.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reporting_controller.dart';

class ReportingView extends GetView<ReportingController> {
  const ReportingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(10), child: DashboardStats());
  }
}
