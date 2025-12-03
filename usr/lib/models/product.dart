class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final List<String> categories;
  final double rating;
  final int reviewCount;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.categories,
    required this.rating,
    required this.reviewCount,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"] ?? "",
      name: json["name"] ?? "No Name",
      description: json["description"] ?? "No Description",
      price: (json["price"] as num?)?.toDouble() ?? 0.0,
      imageUrl: json["imageUrl"] ?? "https://via.placeholder.com/150",
      categories: List<String>.from(json["categories"] ?? []),
      rating: (json["rating"] as num?)?.toDouble() ?? 0.0,
      reviewCount: json["reviewCount"] ?? 0,
    );
  }
}
