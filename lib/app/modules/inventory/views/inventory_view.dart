import 'package:abadifarm/app/utils/themes.dart';
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
        // leading: Icon(Icons.menu, color: ThemesConfig.primaryIconColor),
        title: Text(
          'Master Barang',
          style: TextStyle(
            color: ThemesConfig.primaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: ThemesConfig.primaryBackgroundColor,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(
              Icons.notifications_active_rounded,
              color: ThemesConfig.primaryIconColor,
            ),
          ),
        ],
      ),
      backgroundColor: ThemesConfig.primaryBackgroundColor,
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
