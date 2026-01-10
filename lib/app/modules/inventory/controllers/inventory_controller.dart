import 'package:abadifarm/app/data/models/stock_barang_model.dart';
import 'package:abadifarm/app/data/repositories/inventory_repository.dart';
import 'package:get/get.dart';

class InventoryController extends GetxController {
  final InventoryRepository repository;
  InventoryController(this.repository);

  final barang = <Barang>[].obs;
  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  void loadData() {
    barang.assignAll(repository.getBarang());
  }
}
