import 'package:craftmyplate/components/custom_button.dart';
import 'package:craftmyplate/screens/Home/home.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Just a step away !",
              style: TextStyle(fontSize: getProportionateScreenWidth(20))),
          SizedBox(height: getProportionateScreenHeight(28)),
          SizedBox(
              height: getProportionateScreenHeight(50),
              child: buildDetailForm("Full name*", TextInputType.name)),
          SizedBox(height: getProportionateScreenHeight(16)),
          SizedBox(
              height: getProportionateScreenHeight(50),
              child: buildDetailForm("Email*", TextInputType.emailAddress)),
          const Spacer(flex: 2),
          SizedBox(
            width: double.maxFinite,
            child: CustomButton(
                text: "Let's Start",
                onPressed: (context) =>
                    Navigator.pushNamed(context, Home.routeName)),
          )
        ],
      ),
    );
  }

  TextFormField buildDetailForm(String? text, TextInputType inputType) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: getProportionateScreenWidth(14),
          color: kSecondaryTextColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: kFormColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: kFormColor),
        ),
      ),
    );
  }
}
