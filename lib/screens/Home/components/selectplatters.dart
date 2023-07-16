import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SelectPlatters extends StatelessWidget {
  const SelectPlatters({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/otpscreen");
      },
      child: SizedBox(
          height: getProportionateScreenHeight(130),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kSecondaryColor,
                boxShadow: [
                  BoxShadow(
                    color: kSecondaryTextColor.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                  ),
                ]),
            child: Column(
              children: [
                Container(
                  height: getProportionateScreenHeight(90),
                  width: getProportionateScreenWidth(158),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/card1.png"))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Default Platters",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: getProportionateScreenWidth(14)),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
