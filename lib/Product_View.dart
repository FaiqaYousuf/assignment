import 'package:flutter/material.dart';
import 'data.dart'; // Import your data file
import 'index/Products.dart';
import 'Product.dart';
import 'CategoryList.dart';
import 'CartPage.dart'; // Import the CartPage widget
import 'ProductDetail.dart'; // Import the ProductDetailPage widget

void main() => runApp(EcommerceApp());

class EcommerceApp extends StatefulWidget {
  @override
  _EcommerceAppState createState() => _EcommerceAppState();
}

class _EcommerceAppState extends State<EcommerceApp> {
  int selectedCategoryId = 0;
  List<Product> cartItems = []; // Create a list to store cart items

  List<Product> getFilteredProducts() {
    if (selectedCategoryId == 0) {
      return products;
    } else {
      return products
          .where((product) => product.CategoryId == selectedCategoryId)
          .toList();
    }
  }

  // Function to add a product to the cart
  void addToCart(Product product) {
    setState(() {
      cartItems.add(product);
    });
  }

  // Function to navigate to the cart page
  void navigateToCartPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartPage(cartItems: cartItems),
      ),
    );
  }

  // Placeholder function for toggling favorite status
  void toggleFavorite(Product product) {
    // Implement the logic to toggle the favorite status here
  }

  // Function to navigate to the product detail page
  void navigateToProductDetail(Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailPage(product: product),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('E-commerce App'),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: navigateToCartPage, // Navigate to the cart page
            ),
          ],
        ),
        body: Column(
          children: [
            CategoryList(
              categories: ListOfCategory,
              onCategorySelected: (categoryId) {
                setState(() {
                  selectedCategoryId = categoryId;
                });
              },
            ),

            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10.0),
                itemCount: getFilteredProducts().length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (ctx, index) {
                  final product = getFilteredProducts()[index];
                  return GestureDetector(
                    onTap: () {
                      navigateToProductDetail(product); // Navigate to the product detail page
                    },
                    child: ProductGridItem(
                      product,
                      isInCart: cartItems.contains(product), // Check if the product is in the cart
                      onAddToCart: () {
                        addToCart(product); // Add the product to the cart
                      },
                      onToggleFavorite: () {
                        toggleFavorite(product); // Toggle the favorite status
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
