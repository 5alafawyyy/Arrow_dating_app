import 'package:arrow_dating_app/config/app_router.dart';
import 'package:arrow_dating_app/config/theme.dart';
import 'package:arrow_dating_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal();
  static const MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: ((context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "ARROW",
          theme: theme(),
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: HomeScreen.routeName,
        );
      }),
    );
  }
}
