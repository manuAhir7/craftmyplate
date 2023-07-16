import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class CmpBanner extends StatelessWidget {
  const CmpBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 0,
          child: SvgPicture.asset(
            "assets/images/onboarding1.svg",
            height: getProportionateScreenHeight(243),
          ),
        ),
        Positioned(
          top: getProportionateScreenWidth(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/logo.svg",
                height: getProportionateScreenHeight(70),
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Text("CraftMyPlate",
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: getProportionateScreenHeight(18)))
            ],
          ),
        ),
      ],
    );
  }
}
