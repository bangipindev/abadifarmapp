import 'package:abadifarm/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  const TransactionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'Orders',
          style: TextStyle(
            color: AppColors.baseTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
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
      body: const Center(
        child: Text(
          'TransactionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
