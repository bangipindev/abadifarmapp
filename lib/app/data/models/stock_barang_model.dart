// class StockBarang {
//   final String name;
//   final String code;
//   final String unit;
//   final String image;
//   final String hargaBeli;
//   final String hargaJual;
//   final String stock;

//   StockBarang({
//     required this.name,
//     required this.code,
//     required this.unit,
//     required this.image,
//     required this.hargaBeli,
//     required this.hargaJual,
//     required this.stock,
//   });
// }

enum StockStatus { tersedia, stokRendah, habis }

class Barang {
  final String sku;
  final String name;
  final int stock;
  final int price;
  final String image;
  final StockStatus status;

  Barang({
    required this.sku,
    required this.name,
    required this.stock,
    required this.price,
    required this.image,
    required this.status,
  });
}
