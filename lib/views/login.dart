import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = "LoginView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        "LOGIN SCREEN ",
        style: TextStyle(fontSize: 35),
      ),
    ));
  }
}
