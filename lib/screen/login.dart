import 'package:flutter/material.dart';
import 'package:parippuwa/screen/register.dart';

class Login extends StatefulWidget {
  final VoidCallback show;
  Login(this.show, {super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(fontSize: 24)),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),
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
              register_btn_text()
            ],
          ),
        ),
      ),
    );
  }

  Widget register_btn_text() {
    return GestureDetector(
      onTap: widget.show,
      child: Text("Register"),
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
