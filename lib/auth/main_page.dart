import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:parippuwa/screen/profile_screen.dart';
import 'auth_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator()); // Show loading indicator
          }

          if (snapshot.hasError) {
            return const Center(child: Text("Something went wrong!"));
          }

          if (snapshot.hasData && snapshot.data != null) {
            final user = snapshot.data!;
            return ProfileScreen(
              userName: user.displayName ?? "No Name",
              userEmail: user.email ?? "No Email",
              logOut: () async {
                await FirebaseAuth.instance.signOut();
                await GoogleSignIn().signOut();
              },
              logOutDB: () async {
                await GoogleSignIn().signOut();
              },
            );
          } else {
            return authPage();
          }
        },
      ),
    );
  }
}
