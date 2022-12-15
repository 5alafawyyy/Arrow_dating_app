import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {

  static const String routeName = '/Chat';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: ((context) => const ChatScreen()),
    );
  } 
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child:  Text('Chat Screen')),
    );
  }
}