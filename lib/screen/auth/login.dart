import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:parippuwa/auth/main_page.dart';
import 'package:parippuwa/screen/profile_screen.dart';

class Login extends StatefulWidget {
  final VoidCallback show;
  Login(this.show, {super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _firebaseAuth = FirebaseAuth.instance;

  _handleSignIn() async {
    final GoogleSignInAccount? googleSignInAccount =
        await GoogleSignIn().signIn();

    if (googleSignInAccount == null) {
      return;
    }

    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    await _firebaseAuth.signInWithCredential(credential);

    print(_firebaseAuth.currentUser!.displayName);
    if (_firebaseAuth.currentUser != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // logo
              Image.asset(
                'asset/logo_color.png',
                height: 100, // Adjust size as needed
              ),
              SizedBox(height: 16.0),
              // Email TextField
              email(),
              const SizedBox(height: 16.0),
              // Password TextField
              password(),
              const SizedBox(height: 16.0),
              forgot_password(),
              const SizedBox(height: 8.0),
              login_button(context),
              const SizedBox(height: 8.0),
              register_btn_text(),
              const SizedBox(height: 8.0),
              or_Text(),
              const SizedBox(height: 8.0),
              sign_in_google_btn()
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton sign_in_google_btn() {
    return ElevatedButton(
      onPressed: _handleSignIn,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: const Text(
        'Login with Google',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  Widget or_Text() {
    return Container(
      child: Center(
        child: Text(
          "OR",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
    );
  }

  Widget register_btn_text() {
    return GestureDetector(
      onTap: widget.show,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        decoration: BoxDecoration(
            // Background color
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.lightGreen,
              width: 2,
            )),
        child: Center(
          child: Text(
            "Register",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black, // White text color
            ),
          ),
        ),
      ),
    );
  }

  Widget login_button(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final email = emailController.text;
        final password = passwordController.text;

        // Example action on login button press
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Logging in as $email'),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightGreen,
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: const Text(
        'Login',
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget forgot_password() {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.blue),
      ),
    );
  }

  Widget password() {
    return TextField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: const Icon(Icons.lock),
      ),
    );
  }

  Widget email() {
    return TextField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: const Icon(Icons.email),
      ),
    );
  }
}
