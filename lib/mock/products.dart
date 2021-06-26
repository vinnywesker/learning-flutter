import 'package:first_app/models/product.dart';

class Products {
  List<Product> listProducts() {
    List<Product> products = [];
    for (var i; i < 100; i++) {
      products.add(Product(
          id: i,
          name: 'Produto N ${i.toString()}',
          description: 'Descrição do produto número ${i.toString()}'));
    }
    return products;
  }
}
