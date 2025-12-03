import "dart:math";

import "../models/product.dart";

class ApiService {
  // IMPORTANT: Do not hardcode your real API key here.
  // This is a placeholder for demonstration.
  final String _apiKey = "YOUR_CJ_API_KEY";

  // In a real app, you would use a package like http to make API calls.
  // e.g., import 'package:http/http.dart' as http;

  Future<List<Product>> getProducts() async {
    // This is mock data. In a real app, you would make an API call here.
    // For example:
    // final response = await http.get(Uri.parse('https://api.cjdropshipping.com/v1/products?apiKey=$_apiKey'));
    // if (response.statusCode == 200) {
    //   final data = json.decode(response.body);
    //   return (data['products'] as List).map((item) => Product.fromJson(item)).toList();
    // } else {
    //   throw Exception('Failed to load products');
    // }

    print("Fetching products... (using mock data)");
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay

    // Returning a list of mock products for UI development.
    return List.generate(
      20,
      (index) => Product(
        id: "prod_$index",
        name: "Product Name ${index + 1}",
        description: "This is a detailed description for product ${index + 1}. It's a high-quality item perfect for your needs.",
        price: double.parse((Random().nextDouble() * 100 + 10).toStringAsFixed(2)),
        imageUrl: "https://picsum.photos/seed/${index + 1}/400/400",
        categories: ["Electronics", "Gadgets"],
        rating: double.parse((Random().nextDouble() * 2 + 3).toStringAsFixed(1)), // Rating between 3.0 and 5.0
        reviewCount: Random().nextInt(200) + 10,
      ),
    );
  }
}
