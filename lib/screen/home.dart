import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List of unique names for horizontal cards
  final List<String> horizontalCardNames = [
    'Card A',
    'Card B',
    'Card C',
    'Card D',
    'Card E',
    'Card F',
    'Card G',
  ];

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
            const SizedBox(width: 8), // Add spacing between the image and text
            const Text('Home', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50, // Set height for the horizontal card section
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: horizontalCardNames.length, // Use the names list
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Display a message when the card is clicked
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${horizontalCardNames[index]} clicked!'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.lightGreen,
                    elevation: 4, // Add subtle shadow for better appearance
                    child: SizedBox(
                      width: 100, // Width of each card
                      child: Center(
                        child: Text(
                          horizontalCardNames[index], // Display unique names
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20, // Number of vertical cards
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  elevation: 2, // Subtle shadow for better appearance
                  child: ListTile(
                    title: Text('Item ${index + 1}'),
                    subtitle: const Text('Description of the item'),
                    leading: const Icon(Icons.label, color: Colors.lightGreen),
                    trailing: const Icon(Icons.arrow_forward),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
