import 'package:craftmyplate/constant.dart';
import 'package:craftmyplate/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return VerificationCode(
      length: 4,
      textStyle: const TextStyle(fontSize: 20, color: kTextColor),
      underlineColor: Colors.black38,
      keyboardType: TextInputType.number,
      margin: EdgeInsets.only(right: getProportionateScreenWidth(12)),
      underlineUnfocusedColor: kFormColor,
      onCompleted: (value) {
        setState(() {
          // _code = value;
        });
      },
      onEditing: (value) {},
    );
  }
}
