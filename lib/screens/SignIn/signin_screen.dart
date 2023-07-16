import 'package:craftmyplate/screens/SignIn/components/body.dart';
import 'package:craftmyplate/size_config.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  static String routeName = "/signin";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
