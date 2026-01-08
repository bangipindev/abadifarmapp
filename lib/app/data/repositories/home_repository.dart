import 'package:abadifarm/app/data/models/banner_home.dart';
import 'package:abadifarm/app/data/models/list_menu_category.dart';

import '../sources/home_local_data.dart';
import '../models/alert_model.dart';
import '../models/order_model.dart';
import '../models/best_seller_model.dart';

class HomeRepository {
  List<AlertModel> getAlerts() {
    return HomeLocalData.alerts;
  }

  List<OrderModel> getOrders() {
    return HomeLocalData.orders;
  }

  List<BestSellerModel> getBestProducts() {
    return HomeLocalData.bestProducts;
  }

  List<ListMenuCategoryModel> getCategories() {
    return HomeLocalData.categories;
  }

  List<ListBannerHomeModel> getAllBanner() {
    return HomeLocalData.banner;
  }
}
