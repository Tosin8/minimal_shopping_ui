import 'package:flutter/material.dart';

import 'custom_icon.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.imgUrl,
    required this.title,
    // ignore: non_constant_identifier_names
    required this.color_product,
    // ignore: non_constant_identifier_names
    required this.product_price,
    Key? key,
  }) : super(key: key);

  final String imgUrl;
  final String title;
  // ignore: non_constant_identifier_names
  final dynamic color_product;
  // ignore: non_constant_identifier_names
  final dynamic product_price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: color_product,
        border: Border.all(color: Colors.grey.withOpacity(.3), width: .2),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          const SizedBox(height: 15),
          Image.asset(
            imgUrl,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(CustomIcon.favorite),
                Column(
                  children:  [
                    const Text(
                      'Price',
                      style: TextStyle(
                        // color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(product_price,
                        style: const TextStyle(
                          //color: Colors.white,
                          fontSize: 25,
                          letterSpacing: 5.0,
                        ))
                  ],
                ),
                const Icon(CustomIcon.shopping_cart),
              ],
            ),
          )
        ],
      ),
    );
  }
}
