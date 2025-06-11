import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(BaseOptions(baseUrl: "https://fakestoreapi.com/docs"));

  Future<List<dynamic>> fetchProduct() async {
    final response = await dio.get('product');
    if (response.statusCode == 200 ) {
      final List<dynamic> products = List.from(response.data);
      return products;
    }else {
      throw Exception("Malumot kelmadi");
    }
  }
}
