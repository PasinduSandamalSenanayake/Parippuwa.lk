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

class HouseDetails extends StatefulWidget {
  const HouseDetails({super.key});

  @override
  State<HouseDetails> createState() => _HouseDetailsState();
}

class _HouseDetailsState extends State<HouseDetails> {
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
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              image_container(),
              SizedBox(
                height: 10,
              ),
              location_txt(),
              SizedBox(
                height: 10,
              ),
              price_txt(),
              SizedBox(
                height: 10,
              ),
              description_txt(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Call Me',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text description_txt() {
    return Text(
      "description",
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    );
  }

  Widget location_txt() {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            size: 40,
            color: Colors.lightGreen,
          ),
          Text(
            "Location",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget price_txt() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.price_check,
                size: 40,
                color: Colors.lightGreen,
              ),
              Text(
                "Price",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "28,000",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen,
                  ),
                ),
                TextSpan(
                  text: "/per month", // Access userName via widget
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Change the color of the username
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget image_container() {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 7,
            spreadRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
    );
  }
}
