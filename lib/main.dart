import 'package:flutter/material.dart';
import 'package:gdg_test/Presntation/screens/nav_page.dart';
import 'package:gdg_test/Presntation/screens/onboarding.dart';

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
      title: 'Flutter Demo',
    
      home: OnboardingScreen(),
    );
  }
}

