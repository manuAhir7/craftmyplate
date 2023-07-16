import 'package:craftmyplate/components/custom_button.dart';
import 'package:craftmyplate/constant.dart';
import 'package:craftmyplate/screens/Otp/components/verify_code.dart';
import 'package:craftmyplate/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/green_mark.dart';
import '../../SignUp/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("We have sent a verification code to"),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("+91-XXXXX6794"), GreenTick()],
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          const Verification(),
          SizedBox(height: getProportionateScreenHeight(16)),
          SizedBox(
            width: double.maxFinite,
            child: CustomButton(
                text: "Submit",
                onPressed: (context) =>
                    Navigator.pushNamed(context, SignUp.routeName)),
          ),
          SizedBox(height: getProportionateScreenHeight(8)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Didn't receive code?",
                  style: TextStyle(
                    color: kSecondaryTextColor,
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text("Resend Again.",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: getProportionateScreenWidth(16))))
            ],
          )
        ],
      ),
    );
  }
}
