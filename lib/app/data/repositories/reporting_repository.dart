import '../sources/home_local_data.dart';
import '../models/alert_model.dart';
import '../models/best_seller_model.dart';

class ReportingRepository {
  List<AlertModel> getAlerts() {
    return HomeLocalData.alerts;
  }

  List<BestSellerModel> getBestProducts() {
    return HomeLocalData.bestProducts;
  }
}
