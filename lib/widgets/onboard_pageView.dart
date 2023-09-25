import 'package:flutter/material.dart';
import 'package:todo_app/models/onboard_model.dart';

class OnboardPageView extends StatelessWidget {
  const OnboardPageView({super.key, required this.onboardModel});
  final OnboardModel onboardModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            onboardModel.image,
            fit: BoxFit.fill,
            height: 400,
          ),
        ),
        Text(
          onboardModel.title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black87),
        ),
        const SizedBox(
          height: 35,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            onboardModel.subTitle,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 18,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
