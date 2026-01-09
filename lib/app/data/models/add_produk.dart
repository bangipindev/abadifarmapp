class Product {
  final String name;
  final String variant;
  final int price;
  int qty;

  Product({
    required this.name,
    required this.variant,
    required this.price,
    this.qty = 1,
  });
}
