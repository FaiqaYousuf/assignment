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
        backgroundColor: const Color(0xff2A4BA0),
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Adjust the image size here
            Image.network(
              widget.product.imageUrl,
              fit: BoxFit.cover,
              height: 300, // Adjust the height
              width: double.infinity, // Set to double.infinity to use the full width
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '\$${widget.product.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Description:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    descriptionToShow,
                    style: const TextStyle(
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
                          // Customize the "See More" and "See Less" text style here
                          child: Text(
                            showFullDescription ? "See Less" : "See More",
                            style: const TextStyle(
                              color: Color(0xff2A4BA0), // Customize the text color
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                      : const SizedBox(), // No "See More" button if full description is shown
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            // Customize the button background color
            backgroundColor: const Color(0xff2A4BA0),
            // Customize the button text color
            foregroundColor: Colors.white,
            // Customize the button shape
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: () {
           
          },
          child: const Text(
            "Add to Cart",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}


