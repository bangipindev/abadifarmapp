import 'package:abadifarm/app/modules/product/views/add_product.dart';
import 'package:abadifarm/app/modules/main/bindings/main_binding.dart';
import 'package:abadifarm/app/modules/transaction/views/add_transaction.dart';

import '../modules/detailstore/bindings/detail_store_binding.dart';
import '../modules/detailstore/views/detail_store_view.dart';
import '../modules/product/bindings/inventory_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/transaction/bindings/transaction_binding.dart';
import '../modules/ubahpassword/bindings/ubahpassword_binding.dart';
import '../modules/ubahpassword/views/ubahpassword_view.dart';

import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(name: Routes.MAIN, page: () => MainView(), binding: MainBinding()),

    /// ===== PAGES DI LUAR BOTTOM NAV =====
    ///
    GetPage(
      name: _Paths.DETAIL_STORE,
      page: () => DetailStoreView(),
      binding: DetailStoreBinding(),
    ),
    GetPage(
      name: _Paths.UBAHPASSWORD,
      page: () => UbahpasswordView(),
      binding: UbahpasswordBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TRANSACTION,
      page: () => TransaksiBaruPage(),
      binding: TransactionBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PRODUCT,
      page: () => TambahMasterBarangPage(),
      binding: ProductBinding(),
    ),
  ];
}
