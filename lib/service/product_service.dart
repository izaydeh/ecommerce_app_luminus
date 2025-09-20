import 'dart:convert';
import 'package:ecomm_app/models/products.dart';
import 'package:http/http.dart' as http;

class ProductService {
  final String _baseUrl = "https://fakestoreapi.com/products";

  Future<Products> fetchProduct(int id) async {
    final uri = Uri.parse("$_baseUrl/$id");
    final res = await http.get(uri);

    if (res.statusCode != 200) {
      throw Exception("Failed to load product");
    }

    final p = jsonDecode(res.body) as Map<String, dynamic>;

    return Products(
      id: p['id'] as int,
      title: p['title'] as String,
      price: p['price'] as double,
      description: p['description'] as String,
      category: p['category'] as String,
      image: p['image'] as String,
    );
  }

  Future<List<Products>> fetchProducts() async {
    final res = await http.get(Uri.parse(_baseUrl));
    if (res.statusCode != 200) throw Exception("Failed to load products");
    final data = jsonDecode(res.body) as List<dynamic>;
    return data
        .map((e) => Products.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
