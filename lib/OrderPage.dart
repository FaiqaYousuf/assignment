import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:assignment/index/Products.dart';
import 'home.dart';
class OrderConfirmationPage extends StatelessWidget {
  final double totalAmount;

  const OrderConfirmationPage({required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white70,
      //   foregroundColor:  const Color(0xff2A4BA0),
      //   title: Text('Order Confirmation'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add a fade-in animation for the title
            const AnimatedOpacity(
              opacity: 1.0,
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              child: Text(
                'Thank you for your order!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
           
            SlideInAmount(
              totalAmount: totalAmount,
            ),
            const SizedBox(height: 16),
            
            BounceButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeView()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color:  const Color(0xff2A4BA0), // Button background color
                  borderRadius: BorderRadius.circular(25), // Button border radius
                ),
                child: const Text(
                  'Back to Home',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom widget for animating the total amount
class SlideInAmount extends StatefulWidget {
  final double totalAmount;

  SlideInAmount({required this.totalAmount});

  @override
  _SlideInAmountState createState() => _SlideInAmountState();
}

class _SlideInAmountState extends State<SlideInAmount> {
  double animatedValue = 0;

  @override
  void initState() {
    super.initState();
    // Trigger the animation on widget creation
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        animatedValue = widget.totalAmount;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: animatedValue),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
      builder: (context, value, child) {
        return Text(
          'Total Amount: \$${value.toStringAsFixed(2)}',
          style: const TextStyle(
            fontSize: 18,
          ),
        );
      },
    );
  }
}

// Custom widget for animating the "Back to Home" button
class BounceButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;

  BounceButton({required this.onPressed, required this.child});

  @override
  _BounceButtonState createState() => _BounceButtonState();
}

class _BounceButtonState extends State<BounceButton> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          _scale = 0.95;
        });
      },
      onTapUp: (details) {
        setState(() {
          _scale = 1.0;
        });
        widget.onPressed();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        transform: Matrix4.identity()..scale(_scale),
        child: widget.child,
      ),
    );
  }
}
