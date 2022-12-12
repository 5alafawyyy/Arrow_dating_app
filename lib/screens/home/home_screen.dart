import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../models/models.dart';
import '../../widgets/widgets.dart';

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
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserCard(user: User.users[0]),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8.0.h,
                horizontal: 50.0.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChoiseButton(
                    height: 60.r,
                    width: 60.r,
                    size: 25.r,
                    color: Theme.of(context).colorScheme.secondary,
                    hasGradient: false,
                    icon: Icons.clear_rounded,
                  ),
                  ChoiseButton(
                    height: 80.r,
                    width: 80.r,
                    size: 30.r,
                    color: Colors.white,
                    hasGradient: true,
                    icon: Icons.favorite,
                  ),
                  ChoiseButton(
                    height: 60.r,
                    width: 60.r,
                    size: 25.r,
                    color: Theme.of(context).primaryColor,
                    hasGradient: false,
                    icon: Icons.watch_later,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
