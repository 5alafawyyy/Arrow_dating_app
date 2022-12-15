import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  static const String routeName = '/users';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: ((context) => const UsersScreen()),
    );
  }

  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height/2,
      ),
    );
  }
}
