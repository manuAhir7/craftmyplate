import 'package:craftmyplate/screens/Walkthrough/components/body.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class Walkthrough extends StatelessWidget {
  const Walkthrough({super.key});
  static String routeName = "/walkthrough";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
