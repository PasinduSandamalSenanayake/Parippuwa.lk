import 'package:flutter/material.dart';
import 'package:parippuwa/screen/login.dart';

class Register extends StatefulWidget {
  final VoidCallback show;
  const Register(this.show, {super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo
              Image.asset(
                'asset/logo_color.png',
                height: 100, // Adjust size as needed
              ),
              const SizedBox(height: 16.0),
              username(),
              const SizedBox(height: 16.0),
              email(),
              const SizedBox(height: 16.0),
              password(),
              const SizedBox(height: 16.0),
              register_button(),
              const SizedBox(height: 8.0),
              login_btn_text(),
            ],
          ),
        ),
      ),
    );
  }

  Widget login_btn_text() {
    return GestureDetector(
              onTap: widget.show,
              child: Text("Login"),
            );
  }

  Widget register_button() {
    return ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Register',
                style: TextStyle(fontSize: 18),
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

  Widget username() {
    return TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                prefixIcon: const Icon(Icons.person),
              ),
            );
  }
}
