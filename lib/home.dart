// ignore: unused_import
import 'package:assignment/Product.dart';
import 'package:assignment/Product_View.dart';
// ignore: unused_import
import 'package:assignment/product.dart';
import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String deliveryLocation = "Sindh, Karachi";
  String deliveryTime = "1 Day";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18.0),
            child: const Icon(
              Icons.shopping_cart,
              size: 25.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Container for search bar and icon
          Container(
            color: const Color(
              0xff2A4BA0,
            ),
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Search bar
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                      color: const Color(0xff153075),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 6.0,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Products or Store",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                  ),
                ),
                // Icon
              ],
            ),
          ),

          // Row with two containers, text, and icon
          Container(
            color: const Color(0xff2A4BA0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left Container
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      // Column for text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Delivery To",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            deliveryLocation, // Use the state variable here
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                ),

                // Right Container (duplicate the left container and adjust content)
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      // Column for text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Within",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            deliveryTime, // Use the state variable here
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Horizontal scrolling containers
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Container 1
                _buildContainer(
                  
                  text: "Your Savings",
                ),

                // Container 2
                _buildContainer(
                 
                  text: "Your Savings",
                ),

                // Container 3
                _buildContainer(
                 
                  text: "Your Savings",
                ),
              ],
            ),
          ),

          // Vertical scrolling containers
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // Container 4
                  _buildVerticalContainer(
                   
                    text: "HouseHolds",
                  ),

                  // Container 5
                  _buildVerticalContainer(
                    
                    text: "Groceries",
                  ),

                  // Container 6
                  _buildVerticalContainer(
                    
                                        text: "Electronic Appliances",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80, // Adjust the height as needed
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.house_outlined), // Replace with your icon
              onPressed: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  EcommerceApp()),
  );
              },
            ),
            IconButton(
              icon: const Icon(Icons.category_outlined), // Replace with your icon
              onPressed: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  EcommerceApp()),
  );
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite_outline_rounded), // Replace with your icon
              onPressed: () {
               Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  EcommerceApp()),
  );
              },
            ),
            IconButton(
              icon: const Icon(Icons.menu_outlined), // Replace with your icon
              onPressed: () {
                // onPressed logic for icon 4
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer({
    required String text,
  }) {
    return Container(
      width: 150,
      height: 100,
      margin: const EdgeInsets.fromLTRB(15, 20, 5, 10),
      decoration: BoxDecoration(
        color: const Color(0xffFFC83A),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: Text(
              "345 USD",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ),
         
        ],
      ),
    );
  }

  Widget _buildVerticalContainer({
   
    required String text,
  }) {
    return Container(
      width: 380,
      height: 150,
      margin: const EdgeInsets.all(10), // Adjust margin as needed
      padding: const EdgeInsets.all(13), // Adjust padding as needed
      decoration: BoxDecoration(
      // ignore: prefer_const_constructors
      gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [const Color(0xff153075), const Color.fromARGB(255, 3, 77, 138)], // Adjust gradient colors
    ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
           ElevatedButton(
  onPressed: () {
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  EcommerceApp()),
  );
  },
  style: ElevatedButton.styleFrom(
    // ignore: deprecated_member_use
    primary: Colors.white, // Background color
    // ignore: deprecated_member_use
    onPrimary: Colors.white, // Text color
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30), // Button padding
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0), // Button border radius
    ),
  ),
  child: const Text(
    "Shop Now",
    style: TextStyle(
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.normal,
    ),
  ),
)

          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: HomeView(),
//   ));
// }
