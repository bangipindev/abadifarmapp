import 'package:abadifarm/app/core/widgets/main_layout.dart';
import 'package:abadifarm/app/modules/home/bindings/home_binding.dart';
import 'package:abadifarm/app/modules/home/views/home_view.dart';
import 'package:abadifarm/app/modules/product/views/add_product.dart';
import 'package:abadifarm/app/modules/product/views/product_view.dart';
import 'package:abadifarm/app/modules/profile/bindings/profile_binding.dart';
import 'package:abadifarm/app/modules/profile/views/profile_view.dart';
import 'package:abadifarm/app/modules/reporting/bindings/reporting_binding.dart';
import 'package:abadifarm/app/modules/reporting/views/reporting_view.dart';
import 'package:abadifarm/app/modules/transaction/views/add_transaction.dart';

import '../modules/detailstore/bindings/detail_store_binding.dart';
import '../modules/detailstore/views/detail_store_view.dart';
import '../modules/product/bindings/inventory_binding.dart';
import '../modules/transaction/bindings/transaction_binding.dart';
import '../modules/ubahpassword/bindings/ubahpassword_binding.dart';
import '../modules/ubahpassword/views/ubahpassword_view.dart';

import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => MainLayout(title: 'Home', currentIndex: 0, child: HomeView()),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.PRODUCT,
      page: () => MainLayout(
        title: 'Master Barang',
        currentIndex: 1,
        child: ProductView(),
      ),
      binding: ProductBinding(),
    ),
    GetPage(
      name: Routes.REPORTING,
      page: () =>
          MainLayout(title: 'Laporan', currentIndex: 2, child: ReportingView()),
      binding: ReportingBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () =>
          MainLayout(title: 'Akun Saya', currentIndex: 3, child: ProfileView()),
      binding: ProfileBinding(),
    ),

    /// ===== PAGES DI LUAR BOTTOM NAV =====
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
