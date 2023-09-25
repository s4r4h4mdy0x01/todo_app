import 'package:flutter/material.dart';
import 'package:todo_app/views/login.dart';
import 'package:todo_app/widgets/custom_row_text.dart';
import 'package:todo_app/widgets/custom_text_button.dart';
import 'package:todo_app/widgets/custom_text_form_field.dart';
import 'package:todo_app/widgets/text_is_sign.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static String id = 'SignUpView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 56,
              ),
              Image.asset(
                'assets/7.png',
                fit: BoxFit.fill,
                height: 300,
              ),
              const CustomTextFormField(
                  hint: "Email",
                  icon: Icons.email,
                  typeInput: TextInputType.emailAddress),
              const SizedBox(
                height: 10,
              ),
              const CustomTextFormField(
                  hint: "Password",
                  icon: Icons.lock,
                  typeInput: TextInputType.visiblePassword),
              CustomRowText(
                onpressed: () {
                  Navigator.pushNamed(context, LoginView.id);
                },
                text: 'already have an account',
                textOfType: "Login",
              ),
              const CustomTextButton(text: 'Sign Up'),
              TextIsSign(onpressed: () {}, textOfType: 'Forget Password?'),
            ],
          ),
        ),
      ),
    );
  }
}
