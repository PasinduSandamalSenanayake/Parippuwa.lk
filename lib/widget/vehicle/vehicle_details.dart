import 'package:flutter/material.dart';

class VehicleDetails extends StatefulWidget {
  const VehicleDetails({super.key});

  @override
  State<VehicleDetails> createState() => _VehicleDetailsState();
}

class _VehicleDetailsState extends State<VehicleDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Row(
          children: [
            Text(
              "Vehicle",
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
              vehicle_txt(),
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

  Widget vehicle_txt() {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.car_rental,
            size: 40,
            color: Colors.lightGreen,
          ),
          Text(
            "Vehicle",
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
                  text: "28.50",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen,
                  ),
                ),
                TextSpan(
                  text: "/per km", // Access userName via widget
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
