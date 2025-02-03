import 'package:flutter/material.dart';

class ItemsDetails extends StatefulWidget {
  const ItemsDetails({super.key});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Row(
          children: [
            Text(
              "Item",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            )
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
              item_txt(),
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
              contact_btn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget contact_btn() {
    return SizedBox(
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
    );
  }

  Widget description_txt() {
    return Text(
      "description",
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    );
  }

  Widget item_txt() {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.home_repair_service_rounded,
            size: 40,
            color: Colors.lightGreen,
          ),
          Text(
            "Item",
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
                  text: "2800",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen,
                  ),
                ),
                TextSpan(
                  text: "/per day", // Access userName via widget
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
