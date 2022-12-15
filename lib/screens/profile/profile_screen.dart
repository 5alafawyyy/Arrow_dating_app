import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

  static const String routeName = '/Profile';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: ((context) => const ProfileScreen()),
    );
  } 
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child:  Text('Profile Screen')),
    );
  }
}