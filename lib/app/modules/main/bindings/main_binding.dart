import 'package:abadifarm/app/data/repositories/home_repository.dart';
import 'package:abadifarm/app/data/repositories/inventory_repository.dart';
import 'package:abadifarm/app/modules/home/controllers/home_controller.dart';
import 'package:abadifarm/app/modules/product/controllers/inventory_controller.dart';
import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());

    // HOME
    Get.lazyPut<HomeRepository>(() => HomeRepository());
    Get.lazyPut<HomeController>(
      () => HomeController(Get.find<HomeRepository>()),
      fenix: true,
    );

    // TRANSAKSI
    Get.lazyPut<InventoryRepository>(() => InventoryRepository());
    Get.lazyPut<InventoryController>(
      () => InventoryController(Get.find<InventoryRepository>()),
      fenix: true,
    );
  }
}
