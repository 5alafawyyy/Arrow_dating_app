import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: ((context) => const HomeScreen()),
    );
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
