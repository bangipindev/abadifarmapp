import 'package:abadifarm/app/data/models/stock_barang_model.dart';
import '../sources/home_local_data.dart';

class InventoryRepository {
  List<Barang> getBarang() {
    return HomeLocalData.barang;
  }
}
