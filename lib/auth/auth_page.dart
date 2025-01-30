import 'package:flutter/material.dart';

import '../screen/login.dart';
import '../screen/register.dart';

class authPage extends StatefulWidget {
  const authPage({super.key});

  @override
  State<authPage> createState() => _authPageState();
}

class _authPageState extends State<authPage> {
  bool auth = true;

  void to() {
    setState(() {
      auth = !auth;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (auth) {
      return Login(to);
    } else {
      return Register(to);
    }
  }
}
