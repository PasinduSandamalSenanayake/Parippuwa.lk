import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            house_category(),
            vehicle_category(),
            camping_category(),
            item_category(),
          ],
        ),
      ),
    );
  }

  Widget house_category() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 10, horizontal: 5), // Ensure proper spacing
      child: GestureDetector(
        onTap: () {}, // Keep your onTap logic
        child: Container(
          width: 100, // Fixed width for each container
          height: 40, // Fixed height for each container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.lightGreen,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          alignment: Alignment.center, // Center text inside the container
          child: const Text(
            "House", // Static text inside the container
            style: TextStyle(
              fontSize: 18,
              color: Colors.black, // Text color
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget vehicle_category() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 10, horizontal: 5), // Ensure proper spacing
      child: GestureDetector(
        onTap: () {}, // Keep your onTap logic
        child: Container(
          width: 100, // Fixed width for each container
          height: 40, // Fixed height for each container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.lightGreen,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          alignment: Alignment.center, // Center text inside the container
          child: const Text(
            "Vehicle", // Static text inside the container
            style: TextStyle(
              fontSize: 18,
              color: Colors.black, // Text color
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget camping_category() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 10, horizontal: 5), // Ensure proper spacing
      child: GestureDetector(
        onTap: () {}, // Keep your onTap logic
        child: Container(
          width: 100, // Fixed width for each container
          height: 40, // Fixed height for each container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.lightGreen,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          alignment: Alignment.center, // Center text inside the container
          child: const Text(
            "Camping", // Static text inside the container
            style: TextStyle(
              fontSize: 18,
              color: Colors.black, // Text color
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget item_category() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 10, horizontal: 5), // Ensure proper spacing
      child: GestureDetector(
        onTap: () {}, // Keep your onTap logic
        child: Container(
          width: 100, // Fixed width for each container
          height: 40, // Fixed height for each container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.lightGreen,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          alignment: Alignment.center, // Center text inside the container
          child: const Text(
            "Item", // Static text inside the container
            style: TextStyle(
              fontSize: 18,
              color: Colors.black, // Text color
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
