
// import 'package:ecommerceapp/home.dart';
// import 'package:ecommerceapp/slider.dart';



import 'package:assignment/home.dart';
// ignore: unused_import
import 'package:assignment/slider.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeView(),

    );
  }
}
