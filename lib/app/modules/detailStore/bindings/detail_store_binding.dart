import 'package:get/get.dart';

import '../controllers/detail_store_controller.dart';

class DetailStoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailStoreController>(
      () => DetailStoreController(),
    );
  }
}
