import 'package:flutter/material.dart';

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
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: const Color(0xFFEF6C00),
              border: Border.all(color: Colors.grey.withOpacity(.3), width: .2),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Image.asset(
                  'assets/images/nike_airforce_w.png',
                ),
                const SizedBox(height: 20),
                const Text(
                  'Nike Airforce W',
                  style: TextStyle(
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
                      const Icon(Icons.favorite),
                      Column(
                        children: const [
                          Text(
                            'Price',
                            style: TextStyle(
                              // color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text('\$120.00',
                              style: TextStyle(
                                //color: Colors.white,
                                fontSize: 25,
                                letterSpacing: 5.0,
                              ))
                        ],
                      ),
                      const Icon(Icons.shopping_cart),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
