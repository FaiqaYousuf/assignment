import 'package:flutter/material.dart';
import 'index/Products.dart'; // Import your product model

class ProductDetailPage extends StatefulWidget {
  final Product product;

  ProductDetailPage({required this.product});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  bool showFullDescription = false;

  @override
  Widget build(BuildContext context) {
    String descriptionToShow = widget.product.description;

    if (!showFullDescription && widget.product.description.length > 100) {
      descriptionToShow = widget.product.description.substring(0, 100);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.product.imageUrl,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '\$${widget.product.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Description:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    descriptionToShow,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  widget.product.description.length > 100
                      ? TextButton(
                          onPressed: () {
                            setState(() {
                              showFullDescription = !showFullDescription;
                            });
                          },
                          child: Text(showFullDescription ? "See Less" : "See More"),
                        )
                      : SizedBox(), // No "See More" button if full description is shown
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ElevatedButton(
          onPressed: () {
            // Add the product to the cart
            // You should implement the addToCart function as per your logic
          },
          child: Text("Add to Cart"),
        ),
      ),
    );
  }
}
