import 'index/Category.dart'; // Import the Category model
import 'index/Products.dart';

List<Category> categories = [
  Category(id: 1, title: 'Category 1'),
  Category(id: 2, title: 'Category 2'),
  // Add more categories
];

List<Product> products = [
  Product(
    id: 1,
    title: 'Product 1',
    description: 'Description of Product 1 ',
    price: 29.99,
    imageUrl: 'https://www.khasstores.us/cdn/shop/products/3-piece-stitched-lawn-suit-kc-1423-khas-lawn-23-dilara-fasunslad-s-sandspit-973389.jpg?v=1676802126',
    CategoryId: 1,
    isFavourite: true
     // Associate this product with a category
  ),

  Product(
    id: 1,
    title: 'Product 1',
    description: 'Description of Product 1 ',
    price: 29.99,
    imageUrl: 'https://www.khasstores.us/cdn/shop/products/3-piece-stitched-lawn-suit-kc-1423-khas-lawn-23-dilara-fasunslad-s-sandspit-973389.jpg?v=1676802126',
    CategoryId: 3,
    isFavourite: true
     // Associate this product with a category
  ),

  Product(
    id: 1,
    title: 'Product 2',
    description: 'Description of Product 1',
    price: 29.99,
    imageUrl: 'https://www.khasstores.us/cdn/shop/products/3-piece-stitched-lawn-suit-kc-1423-khas-lawn-23-dilara-fasunslad-s-sandspit-973389.jpg?v=1676802126',
    CategoryId: 2, 
    isFavourite: false,
   // Associate this product with a category
  ),
  // Add more products with different categories
];
