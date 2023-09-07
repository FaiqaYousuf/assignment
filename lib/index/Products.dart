// product_model.dart
class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final int CategoryId;
  final bool isFavourite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl, 
    required this.CategoryId,
    required this.isFavourite
  });

 
}
