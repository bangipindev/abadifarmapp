import 'package:abadifarm/app/data/models/add_produk.dart';

import '../sources/home_local_data.dart';

class TransaksiRepository {
  List<Product> getDataProduct() {
    return HomeLocalData.products;
  }

  Future<void> submitTransaction(Map<String, dynamic> data) async {
    // hit API / database
    await Future.delayed(const Duration(seconds: 1));
  }
}
