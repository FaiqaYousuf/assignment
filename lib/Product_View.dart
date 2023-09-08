import 'package:flutter/material.dart';
import 'Favourite.dart';
import 'data.dart'; // Import your data file
import 'home.dart';
import 'index/Products.dart';
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

  // Function to get the count of items in the cart
  int getCartItemCount() {
    return cartItems.length;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff2A4BA0),
          title: const Text(
            "Hey, User",
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 1,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          toolbarHeight: 80,
          elevation: 0,
          actions: [
            Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  onPressed: navigateToCartPage,
                ),
                if (getCartItemCount() > 0) // Show badge only if cart is not empty
                  Positioned(
                    top: 8,
                    right: 8,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 8,
                      child: Text(
                        getCartItemCount().toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              color: const Color(0xff2A4BA0),
              padding: const EdgeInsets.all(12.0),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shop Products",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                padding: const EdgeInsets.all(15.0),
                itemCount: getFilteredProducts().length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5 / 2,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                ),
                itemBuilder: (ctx, index) {
                  final product = getFilteredProducts()[index];
                  return GestureDetector(
                    onTap: () {
                      navigateToProductDetail(product);
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 12, left: 8),
                                height: 130,
                                width: 160,
                                child: Expanded(
                                  child: Image.network(
                                    product.imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  product.title,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 1.0),
                                child: Text(
                                  '\$${product.price.toStringAsFixed(2)}',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              icon: Icon(
                                product.isFavourite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: product.isFavourite ? Colors.red : Colors.red,
                              ),
                              onPressed: () {
                                toggleFavorite(product);
                              },
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: ElevatedButton(
                              onPressed: () {
                                addToCart(product);
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Item Added to Cart'),
                                      content: const Text('The item has been added to your cart.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text(
                                            'OK',
                                            style: TextStyle(
                                              color: Color(0xff2A4BA0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                setState(() {}); // Update the UI to reflect cart changes
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff2A4BA0),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                              child: const Text(
                                'Add to Cart',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 80,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.house_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeView()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.category_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EcommerceApp()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.favorite_outline_rounded),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavoritesPage(favoriteProducts: const [])),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.menu_outlined),
                onPressed: () {
                  // onPressed logic for icon 4
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
