import 'package:abadifarm/app/data/models/stock_barang_model.dart';
import 'package:abadifarm/app/modules/inventory/controllers/inventory_controller.dart';
import 'package:abadifarm/app/routes/app_pages.dart';
import 'package:abadifarm/app/widgets/product/product_card.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:get/get.dart';

class InventoryView extends StatefulWidget {
  const InventoryView({super.key});

  @override
  State<InventoryView> createState() => _InventoryViewState();
}

class _InventoryViewState extends State<InventoryView> {
  final InventoryController controller = Get.find<InventoryController>();
  String search = '';
  StockStatus? selectedStatus; // null = semua

  Timer? _debounce;

  List<Barang> get filteredProducts {
    return controller.barang.where((p) {
      final matchSearch =
          p.name.toLowerCase().contains(search.toLowerCase()) ||
          p.sku.toLowerCase().contains(search.toLowerCase());

      final matchStatus = selectedStatus == null || p.status == selectedStatus;

      return matchSearch && matchStatus;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(Routes.ADD_PRODUCT);
          },
          backgroundColor: Colors.blue,
          elevation: 12,
          child: const Icon(Icons.add, color: Colors.white, size: 28),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              _searchBar(),
              SizedBox(height: 12),
              _filterBar(),
              SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: filteredProducts.length,
                  separatorBuilder: (_, __) => SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    return ProductCard(product: filteredProducts[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Cari nama atau SKU barang...',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onChanged: (value) {
        if (_debounce?.isActive ?? false) _debounce!.cancel();

        // Set delay (misal 500ms)
        _debounce = Timer(const Duration(milliseconds: 800), () {
          setState(() {
            search = value;
          });
        });
      },
    );
  }

  Widget _filterBar() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _filterButton(
            label: 'Semua',
            selected: selectedStatus == null,
            onTap: () => setState(() => selectedStatus = null),
          ),
          const SizedBox(width: 8),
          _filterButton(
            label: 'Tersedia',
            selected: selectedStatus == StockStatus.tersedia,
            onTap: () => setState(() => selectedStatus = StockStatus.tersedia),
          ),
          const SizedBox(width: 8),
          _filterButton(
            label: 'Stok Rendah',
            selected: selectedStatus == StockStatus.stokRendah,
            onTap: () =>
                setState(() => selectedStatus = StockStatus.stokRendah),
          ),
          const SizedBox(width: 8),
          _filterButton(
            label: 'Habis',
            selected: selectedStatus == StockStatus.habis,
            onTap: () => setState(() => selectedStatus = StockStatus.habis),
          ),
        ],
      ),
    );
  }

  Widget _filterButton({
    required String label,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.blue),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: selected ? Colors.white : Colors.blue,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
