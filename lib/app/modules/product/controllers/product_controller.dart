import 'package:abadifarm/app/data/models/stock_barang_model.dart';
import 'package:abadifarm/app/data/repositories/product_repository.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final ProductRepository repository;
  ProductController(this.repository);

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
