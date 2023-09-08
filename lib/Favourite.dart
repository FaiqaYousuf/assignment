import 'package:flutter/material.dart';
import 'index/Products.dart';
class FavoritesPage extends StatelessWidget {
  final List<Product> favoriteProducts;

  FavoritesPage({required this.favoriteProducts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favoriteProducts.length,
        itemBuilder: (context, index) {
          final product = favoriteProducts[index];
          return ListTile(
            title: Text(product.title),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            // Add any additional favorite product information here
          );
        },
      ),
    );
  }
}


