import 'package:flutter/material.dart';

import 'house_details.dart';

class HouseWidget extends StatefulWidget {
  const HouseWidget({super.key});

  @override
  State<HouseWidget> createState() => _HouseWidgetState();
}

class _HouseWidgetState extends State<HouseWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: GridView.count(
          childAspectRatio: 0.68,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          shrinkWrap: true,
          children: [
            for (int i = 0; i < 8; i++)
              Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HouseDetails(), // Replace with actual HouseDetail page
                      ),
                    );
                  },
                  child: Container(
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
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          image_container(),
                          name_widget(),
                          description_widget(),
                          price_widget(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget price_widget() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Price",
            style: TextStyle(fontSize: 18),
          ),
          Text(
            "20000",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget description_widget() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Text(
        "Description Description Description Description",
        style: TextStyle(fontSize: 12),
        maxLines: 3,
      ),
    );
  }

  Widget name_widget() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Text(
        "House",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget image_container() {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 7,
            spreadRadius: 5,
            offset: Offset(0, 2),
          )
        ],
      ),
    );
  }
}
