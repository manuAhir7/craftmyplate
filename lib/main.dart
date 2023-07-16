import 'package:craftmyplate/routes.dart';
import 'package:craftmyplate/screens/Walkthrough/walkthrough_screen.dart';
import 'package:craftmyplate/theme.dart';
import 'package:flutter/material.dart';

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
      theme: Themes(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: Walkthrough.routeName,
      routes: routes,
    );
  }
}
