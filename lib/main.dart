import 'package:flutter/material.dart';
import 'package:todo_app/views/login.dart';
import 'package:todo_app/views/onboarding_view.dart';
import 'package:todo_app/views/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        OnboardView.id: (context) => const OnboardView(),
        LoginView.id: (context) => const LoginView(),
        SignUpView.id: (context) => const SignUpView(),
      },
      initialRoute: LoginView.id,
    );
  }
}
