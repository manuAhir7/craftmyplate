import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';

class GreenTick extends StatelessWidget {
  const GreenTick({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(30),
      width: getProportionateScreenWidth(30),
      margin: EdgeInsets.all(getProportionateScreenHeight(10)),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      child: Icon(
        Icons.done,
        color: kSecondaryColor,
        size: getProportionateScreenHeight(20),
      ),
    );
  }
}
