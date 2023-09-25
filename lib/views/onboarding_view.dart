import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_app/const/color.dart';
import 'package:todo_app/models/onboard_model.dart';

import 'package:todo_app/views/login.dart';
import 'package:todo_app/widgets/custom_text_button.dart';
import 'package:todo_app/widgets/onboard_pageView.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});
  static String id = "OnboardView";

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  final List<OnboardModel> onboardModels = const [
    OnboardModel(
        image: 'assets/7.png',
        title: 'Do the list for easily',
        subTitle: 'Make your list easily and quickly to facili tate your work'),
    OnboardModel(
        image: 'assets/banking.png',
        title: 'Set a schedule',
        subTitle:
            'Oranize your schedule quickly to make all  your work organized'),
    OnboardModel(
        image: 'assets/3.png',
        title: 'Manage Goals',
        subTitle: 'Set your businss strategy and achieve the goals '),
  ];

  final PageController _pageController = PageController();
  bool islast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, LoginView.id);
            },
            icon: const Text(
              '     Skip',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                if (index == onboardModels.length - 1) {
                  islast = true;
                  setState(() {});
                } else {
                  islast = false;
                  setState(() {});
                }
              },
              itemCount: onboardModels.length,
              itemBuilder: (context, index) => OnboardPageView(
                onboardModel: onboardModels[index],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: onboardModels.length,
              effect: const JumpingDotEffect(
                verticalOffset: 20,
                offset: -100,
                activeDotColor: customGreen,
                dotColor: customGreen1,
                spacing: 18,
                dotWidth: 15,
              ),
            ),
          ),
          CustomTextButton(
            onPressed: () {
              if (_pageController.page! + 1 == onboardModels.length) {
                Navigator.pushNamed(context, LoginView.id);
              }
            },
            text: islast ? 'start!' : 'Next',
          ),
        ],
      ),
    );
  }
}
