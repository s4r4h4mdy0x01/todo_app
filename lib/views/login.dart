import 'package:flutter/material.dart';
import 'package:todo_app/const/color.dart';
import 'package:todo_app/views/sign_up.dart';
import 'package:todo_app/widgets/custom_row_text.dart';
import 'package:todo_app/widgets/custom_text_button.dart';
import 'package:todo_app/widgets/custom_text_form_field.dart';
import 'package:todo_app/widgets/text_is_sign.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = "LoginView";
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
                  Navigator.pushNamed(context, SignUpView.id);
                },
                text: 'Don\'t have an account',
                textOfType: "Sign up",
              ),
              const CustomTextButton(text: 'Login'),
              TextIsSign(onpressed: () {}, textOfType: 'Forget Password?'),
            ],
          ),
        ),
      ),
    );
  }
}
