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
          )
        ],
      ),
    ));
  }
}
