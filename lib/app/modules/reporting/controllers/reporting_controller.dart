import 'package:abadifarm/app/data/models/alert_model.dart';
import 'package:abadifarm/app/data/models/best_seller_model.dart';
import 'package:abadifarm/app/data/repositories/reporting_repository.dart';
import 'package:get/get.dart';

class ReportingController extends GetxController {
  final ReportingRepository repository;

  ReportingController(this.repository);
  final alerts = <AlertModel>[].obs;
  final bestProducts = <BestSellerModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  void loadData() {
    alerts.assignAll(repository.getAlerts());
    bestProducts.assignAll(repository.getBestProducts());
  }
}
