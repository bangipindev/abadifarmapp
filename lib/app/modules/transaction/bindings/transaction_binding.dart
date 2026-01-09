import 'package:abadifarm/app/data/repositories/transaksi_repository.dart';
import 'package:get/get.dart';

import '../controllers/transaction_controller.dart';

class TransactionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransaksiRepository>(() => TransaksiRepository());

    Get.lazyPut<TransactionController>(
      () => TransactionController(Get.find<TransaksiRepository>()),
    );
  }
}
