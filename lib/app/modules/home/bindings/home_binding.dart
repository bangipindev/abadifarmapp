import 'package:abadifarm/app/data/repositories/home_repository.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeRepository());
    Get.lazyPut(() => HomeController(Get.find()));
  }
}
