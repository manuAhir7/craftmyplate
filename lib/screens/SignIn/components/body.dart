import 'package:craftmyplate/constant.dart';
import 'package:craftmyplate/screens/SignIn/components/signin_form.dart';
import 'package:craftmyplate/size_config.dart';
import 'package:flutter/material.dart';

import 'cmp_banner.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Stack(
        children: [
          const CmpBanner(),
          //
          Positioned(
            top: getProportionateScreenHeight(300),
            child: Padding(
              padding: EdgeInsets.all(getProportionateScreenWidth(24)),
              child: const SigninForm(),
            ),
          ),
          //
          Positioned(
            bottom: getProportionateScreenHeight(20),
            left: getProportionateScreenHeight(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "By continuing, you agree to our",
                  style: TextStyle(
                      color: kSecondaryTextColor,
                      fontSize: getProportionateScreenHeight(13)),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(5),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text("Terms of Service",
                          style: TextStyle(
                              color: kSecondaryTextColor,
                              decoration: TextDecoration.underline,
                              fontSize: getProportionateScreenHeight(13))),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(5),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text("Privacy Policy",
                          style: TextStyle(
                              color: kSecondaryTextColor,
                              decoration: TextDecoration.underline,
                              fontSize: getProportionateScreenHeight(13))),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
