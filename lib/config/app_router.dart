import 'package:arrow_dating_app/models/models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    if (kDebugMode) {
      print('The Route is: ${settings.name}');
    }

    if (kDebugMode) {
      print(settings);
    }
    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();
      case SplashScreen.routeName:
        return SplashScreen.route();
      case UsersScreen.routeName:
        return UsersScreen.route(user: settings.arguments as User);
      case OnboardingScreen.routeName:
        return OnboardingScreen.route();
      case MatchesScreen.routeName:
        return MatchesScreen.route();
      case ProfileScreen.routeName:
        return ProfileScreen.route();
      case ChatScreen.routeName:
        return ChatScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: const Text('error'))),
      settings: const RouteSettings(name: '/error'),
    );
  }
}
