import 'package:craftmyplate/screens/Home/components/body.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
