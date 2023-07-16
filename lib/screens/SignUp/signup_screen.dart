import 'package:craftmyplate/screens/SignUp/components/body.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  static String routeName = "/signup";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: () => Navigator.of(context).pop()),
      ),
      body: const Body(),
    );
  }
}
