import 'package:craftmyplate/screens/Home/home.dart';
import 'package:craftmyplate/screens/SignUp/signup_screen.dart';
import 'package:craftmyplate/screens/Otp/otp_screen.dart';
import 'package:craftmyplate/screens/SignIn/signin_screen.dart';
import 'package:craftmyplate/screens/Walkthrough/walkthrough_screen.dart';
import 'package:flutter/material.dart';

import 'components/bottomnavigationbar.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Walkthrough.routeName: (context) => const Walkthrough(),
  SignIn.routeName: (context) => const SignIn(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  SignUp.routeName: (context) => const SignUp(),
  Home.routeName: (context) => const Home(),
  BottomBar.routeName: (context) => BottomBar(),
  // CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
  // HomeScreen.routeName: (context) => HomeScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};
