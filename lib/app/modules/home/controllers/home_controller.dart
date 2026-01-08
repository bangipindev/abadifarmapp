import 'package:abadifarm/app/data/models/alert_model.dart';
import 'package:abadifarm/app/data/models/banner_home.dart';
import 'package:abadifarm/app/data/models/best_seller_model.dart';
import 'package:abadifarm/app/data/models/list_menu_category.dart';
import 'package:abadifarm/app/data/models/order_model.dart';
import 'package:abadifarm/app/data/repositories/home_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeRepository repository;

  HomeController(this.repository);

  final alerts = <AlertModel>[].obs;
  final orders = <OrderModel>[].obs;
  final bestProducts = <BestSellerModel>[].obs;
  final categories = <ListMenuCategoryModel>[].obs;
  final banner = <ListBannerHomeModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  void loadData() {
    alerts.assignAll(repository.getAlerts());
    orders.assignAll(repository.getOrders());
    bestProducts.assignAll(repository.getBestProducts());
    categories.assignAll(repository.getCategories());
    banner.assignAll(repository.getAllBanner());
  }
}
