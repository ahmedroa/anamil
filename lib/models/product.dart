class Product {
  final String name;
  String desc;
  final List<String> images;
  double price;
  final List<Map> details;
  double rate;
  bool isFavorite;
  final String category;

  Product({
    this.name = 'اسم المنتج',
    this.desc = 'الوصف',
    required this.images,
    this.price = 0,
    required this.details,
    this.rate = 0,
    this.isFavorite = false,
    required this.category,
  });

  void changeIsFavorite() {
    isFavorite = !isFavorite;
  }
}
