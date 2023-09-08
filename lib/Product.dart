import 'package:flutter/material.dart';
import 'index/Products.dart';

class ProductGridItem extends StatelessWidget {
  final Product product;
  final bool isInCart;
  final VoidCallback onAddToCart;
  final VoidCallback onToggleFavorite; // Add the onToggleFavorite callback

  ProductGridItem(
    this.product, {
    required this.isInCart,
    required this.onAddToCart,
    required this.onToggleFavorite, // Include the onToggleFavorite callback
  });
@override
Widget build(BuildContext context) {
  return Container(
    height: 1000, // Adjust the height as needed
    child: Card(
      elevation: 4, // Add elevation for a raised look
    
      child: GridTile(
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(0.0)), // Rounded top corners for the image
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          title: Text(
            product.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16, // Adjust font size
              fontWeight: FontWeight.bold, // Apply bold style
              color: Colors.white, // Text color
            ),
          ),
          subtitle: Text(
            '\$${product.price.toStringAsFixed(2)}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14, // Adjust font size
              color: Colors.white, // Text color
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(
                  isInCart ? Icons.shopping_cart : Icons.add_shopping_cart,
                  color: Colors.white,
                ),
                onPressed: onAddToCart,
              ),
              IconButton(
                icon: Icon(
                  product.isFavourite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: onToggleFavorite,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}


}
