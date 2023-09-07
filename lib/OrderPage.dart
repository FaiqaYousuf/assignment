import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:assignment/index/Products.dart';
import 'home.dart';

class OrderConfirmationPage extends StatelessWidget {
  final double totalAmount;

  OrderConfirmationPage({required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Confirmation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Thank you for your order!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Total Amount: \$${totalAmount.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  HomeView()),
  );
                // Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
  //  
    );
  }
}
