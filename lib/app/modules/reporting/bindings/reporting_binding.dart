import 'package:abadifarm/app/data/repositories/reporting_repository.dart';
import 'package:get/get.dart';

import '../controllers/reporting_controller.dart';

class ReportingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReportingRepository>(() => ReportingRepository());

    Get.lazyPut<ReportingController>(
      () => ReportingController(Get.find<ReportingRepository>()),
    );
  }
}
