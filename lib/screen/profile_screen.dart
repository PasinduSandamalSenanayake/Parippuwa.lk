import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final String? userName;
  final String? userEmail;
  final Future<void> Function() logOut;
  final Future<void> Function() logOutDB;

  const ProfileScreen({
    Key? key,
    required this.userName,
    required this.userEmail,
    required this.logOut,
    required this.logOutDB,
  }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            name_txt(),
            SizedBox(
              height: 10,
            ),
            Email_txt(),
            SizedBox(
              height: 20,
            ),
            logOut_btn(context),
          ],
        ),
      ),
    );
  }

  Widget name_txt() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Hi, ",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.lightGreen,
            ),
          ),
          TextSpan(
            text: widget.userName, // Access userName via widget
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Change the color of the username
            ),
          ),
        ],
      ),
    );
  }

  Widget Email_txt() =>
      Text("Email: ${widget.userEmail}"); // Access userEmail via widget

  Widget logOut_btn(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        bool? shouldLogout = await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Logout"),
            content: Text("Do you really want to logout?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context, false); // Cancel logout
                },
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, true); // Confirm logout
                },
                child: Text("Yes"),
              ),
            ],
          ),
        );

        if (shouldLogout == true) {
          await widget.logOut(); // Use widget to access logOut function
          await widget.logOutDB(); // Use widget to access logOutDB function
          if (context.mounted) {
            Navigator.pop(context); // Close the profile page after logout
          }
        }
      },
      child: Text("Logout"),
    );
  }
}
