import 'package:shop_app/core/data/client.dart';

import '../model/product_model.dart';

class ProductRepository {
  final ApiClient client;

  ProductRepository({required this.client });

  List<ProductModel> product = [];

  Future<List<ProductModel>> fetchProduct() async {
    final rawProduct = await client.fetchProduct();
    product = rawProduct.map((e) => ProductModel.fromJson(e),).toList();
    return product;
  }
}