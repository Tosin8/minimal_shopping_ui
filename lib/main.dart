import 'package:flutter/material.dart';

import 'widget/product_card.dart';

void main() {
  runApp(const MaterialApp(
    home: Home_Page(),
    debugShowCheckedModeBanner: false,
  ));
}

// ignore: camel_case_types
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

// ignore: camel_case_types
class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListView(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Image.asset('assets/images/nike_logo.png',
                    width: 20, height: 30)),
          ),
          const ProductCard(
            imgUrl: 'assets/images/nike_airforce_w.png',
            title: 'Nike Airforce W',
            color_product: Color(0xFFEF6C00),
            product_price: '\$120.00',
          ),
          const ProductCard(
            imgUrl: 'assets/images/nike_x_sbdung_green_lobster.png',
            title: 'Nike X Sbding Green',
            color_product: Color(0xFF0277BD),
            product_price: '\$80.00',
          ),
          const ProductCard(
            imgUrl: 'assets/images/nike_zoom_pegasus_33-light_blue.png',
            title: 'Nike Pegasus Blue',
            color_product: Color(0xFF512DA8),
            product_price: '\$50.00',
          ),
          const ProductCard(
            imgUrl: 'assets/images/nike_zoom_pegasus_33_light_pink.png',
            title: 'Nike Pegaus Pink',
            color_product: Color(0xFFF9A825),
            product_price: '\$56.00',
          ),
        ],
      ),
    ));
  }
}
