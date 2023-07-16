import 'package:craftmyplate/screens/Otp/components/body.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  static String routeName = "/otpscreen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("OTP Verification"),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: () => Navigator.of(context).pop()),
      ),
      body: const Body(),
    );
  }
}
