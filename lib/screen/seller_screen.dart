import 'package:flutter/material.dart';

class SellerScreen extends StatefulWidget {
  const SellerScreen({super.key});

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  String selectedValue = 'House';
  List<String> dropdownItems = ['House', 'Vehicle', 'Camping', 'Item'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [
              seller_text(),
              SizedBox(
                height: 20,
              ),
              first_name(),
              SizedBox(
                height: 10,
              ),
              last_name(),
              SizedBox(
                height: 10,
              ),
              contact_number(),
              SizedBox(
                height: 10,
              ),
              address(),
              SizedBox(
                height: 10,
              ),
              nic(),
              SizedBox(
                height: 10,
              ),
              category_dropdown(),
              SizedBox(
                height: 20,
              ),
              Container(
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
                  child: const Text(
                    'Next >',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  DropdownButtonFormField<String> category_dropdown() {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      decoration: InputDecoration(
        labelText: "Select a category",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      items: dropdownItems.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
    );
  }

  Widget nic() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'NIC',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: const Icon(Icons.credit_card),
      ),
    );
  }

  Widget address() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Address',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: const Icon(Icons.location_on),
      ),
    );
  }

  Widget contact_number() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Contact Number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: const Icon(Icons.phone_android_rounded),
      ),
    );
  }

  Widget last_name() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Last Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: const Icon(Icons.person),
      ),
    );
  }

  Widget first_name() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'First Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: const Icon(Icons.person),
      ),
    );
  }

  Widget seller_text() {
    return Text(
      "Seller Registration",
      style: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}
