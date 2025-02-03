import 'package:flutter/material.dart';
import 'package:parippuwa/auth/main_page.dart';
import 'package:parippuwa/screen/seller_screen.dart';
import 'package:parippuwa/screen/profile_screen.dart';
import 'package:parippuwa/widget/home/category_widget.dart';
import 'package:parippuwa/widget/home/home_full.dart';
import 'package:parippuwa/widget/home/home_widget.dart';
import 'package:parippuwa/widget/house/house_widget.dart';
// import 'package:parippuwa/widget/cart_widget.dart'; // Import Cart widget
// import 'package:parippuwa/widget/profile_widget.dart'; // Import Profile widget
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0; // Track selected index

  // Define pages for navigation
  final List<Widget> _pages = [
    HomeFull(), // Home Screen
    SellerScreen(), // Cart Screen
    MainPage(), // Profile Screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  // _selectedIndex = 0; // Navigate to Home when logo is clicked
                });
              },
              child: Image.asset(
                'asset/lk.png',
                height: 32, // Adjust size as needed
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: _pages[_selectedIndex], // Display selected page
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 70,
        color: Colors.lightGreen,
        items: const [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.shopping_cart, size: 30, color: Colors.white),
          Icon(Icons.account_circle, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update selected index
          });
        },
      ),
    );
  }
}
