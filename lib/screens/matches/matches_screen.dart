import 'package:flutter/material.dart';

class MatchesScreen extends StatelessWidget {

  static const String routeName = '/Matches';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: ((context) => const MatchesScreen()),
    );
  } 
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child:  Text('Matches Screen')),
    );
  }
}