import 'package:flutter/material.dart';
import 'package:parippuwa/widget/house/house_widget.dart';
import 'package:parippuwa/widget/vehicle/vehicle_widget.dart';
import 'package:parippuwa/widget/camping/camping_widget.dart';
import 'package:parippuwa/widget/item/item_widget.dart';

class CategoryWidget extends StatefulWidget {
  final Function(Widget) onCategorySelected;

  const CategoryWidget({Key? key, required this.onCategorySelected})
      : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _categoryButton("House", const HouseWidget()),
            _categoryButton("Vehicle", const VehicleWidget()),
            _categoryButton("Camping", const CampingWidget()),
            _categoryButton("Item", const ItemWidget()),
          ],
        ),
      ),
    );
  }

  Widget _categoryButton(String label, Widget categoryWidget) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: GestureDetector(
        onTap: () => widget.onCategorySelected(
            categoryWidget), // Accessing the parent's callback
        child: Container(
          width: 100,
          height: 40,
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
          alignment: Alignment.center,
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
