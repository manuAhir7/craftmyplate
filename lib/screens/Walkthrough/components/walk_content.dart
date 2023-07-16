import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class WalkContent extends StatelessWidget {
  const WalkContent({super.key, this.headtext, this.text, this.image});
  final String? headtext, text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset(
          image!,
          height: getProportionateScreenHeight(270),
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        Text(
          headtext!,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(24),
              fontWeight: FontWeight.w400),
        ),
        SizedBox(height: getProportionateScreenHeight(16)),
        Text(
          text!,
          style: const TextStyle(color: kSecondaryTextColor),
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
