class Product {
  final int id;
  final String name;
  final String description;
  bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.description,
    this.isFavorite = false,
  });
}
