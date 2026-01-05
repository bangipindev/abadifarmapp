import 'package:abadifarm/app/widgets/product_category_filter.dart';
import 'package:abadifarm/app/widgets/search_bar.dart';
import 'package:abadifarm/app/widgets/stock_barang_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/inventory_controller.dart';

class InventoryView extends GetView<InventoryController> {
  InventoryView({super.key}) {
    Get.put(InventoryController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/icons/hamburger.png"),
        title: const Text(
          'Master Barang',
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
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBarWidget(),
              SizedBox(height: 20),
              ProductCategoryFilter(),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.stockBarangList.length,
                itemBuilder: (context, index) {
                  return StockBarangCard(
                    data: controller.stockBarangList[index],
                  );
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
