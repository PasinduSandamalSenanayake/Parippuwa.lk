import 'package:flutter/material.dart';
import 'package:parippuwa/widget/home_widget.dart';

import '../widget/category_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Row(
          children: [
            Image.asset(
              'asset/lk.png',
              height: 32, // Adjust size as needed
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [CategoryWidget(), HomeWidget()],
        ),
      ),
    );
  }
}
