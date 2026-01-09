import 'package:abadifarm/app/data/models/add_produk.dart';
import 'package:abadifarm/app/data/repositories/transaksi_repository.dart';
import 'package:get/get.dart';

class TransactionController extends GetxController {
  final TransaksiRepository repository;
  TransactionController(this.repository);

  final products = <Product>[].obs;
  final isLoading = false.obs;

  Future<void> submit() async {
    isLoading.value = true;

    try {
      await repository.submitTransaction({
        "products": products
            .map((e) => {"name": e.name, "qty": e.qty})
            .toList(),
      });

      Get.snackbar("Sukses", "Transaksi berhasil");
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  void loadData() {
    products.assignAll(repository.getDataProduct());
  }
}
