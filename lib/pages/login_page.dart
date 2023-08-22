import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          "Login page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          // textScaleFactor: 2.0,
        ),
      ),
    );
  }
}
