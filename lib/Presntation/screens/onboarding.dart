import 'package:flutter/material.dart';
import 'package:gdg_test/Data/onboarding_model.dart';
import 'package:gdg_test/Presntation/screens/nav_page.dart';
import '../widgets/onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const  OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<OnboardingModel> onboardingPages = [
    OnboardingModel(
      image: 'assets/onboarding1.png', // Replace with actual paths
      title: 'Be examined by the best doctors',
      description: 'Exercitation et enim necessitatibus. Voluptatibus harum.',
    ),
    OnboardingModel(
      image: 'assets/onboarding2.png',
      title: 'Follow your reservations from home',
      description: 'Exercitation et enim necessitatibus. Voluptatibus harum.',
    ),
    OnboardingModel(
      image: 'assets/onboarding3.png',
      title: 'All through our app',
      description: 'Exercitation et enim necessitatibus. Voluptatibus harum.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemCount: onboardingPages.length,
            itemBuilder: (context, index) {
              return OnboardingPage(onboardingPages[index]);
            },
          ),
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: () {
                CustomBottomNavigationBar();
                // Navigate to next screen
              },
              child: const Text('Skip', style: TextStyle(color: Colors.orange)),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingPages.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: _currentIndex == index ? 12 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: _currentIndex == index ? Colors.orange : Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: _currentIndex == onboardingPages.length - 1
          ? FloatingActionButton(
              onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CustomBottomNavigationBar()),
          );
        },
        child: const Icon(Icons.arrow_forward),
            )
          : null,
    );
  }
}
