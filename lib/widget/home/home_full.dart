import 'package:flutter/material.dart';

import 'category_widget.dart';
import 'home_widget.dart';

class HomeFull extends StatefulWidget {
  const HomeFull({super.key});

  @override
  State<HomeFull> createState() => _HomeFullState();
}

class _HomeFullState extends State<HomeFull> {
  Widget currentWidget = const HomeWidget(); // Default widget

  void switchWidget(Widget newWidget) {
    setState(() {
      currentWidget = newWidget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryWidget(onCategorySelected: switchWidget), // Pass the method
          Expanded(child: currentWidget), // Render the selected widget
        ],
      ),
    );
  }
}
