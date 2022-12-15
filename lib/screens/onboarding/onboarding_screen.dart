import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {

  static const String routeName = '/Onboarding';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: ((context) => const OnboardingScreen()),
    );
  } 
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child:  Text('OnBoarding Screen')),
    );
  }
}