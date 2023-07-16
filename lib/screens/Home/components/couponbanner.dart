import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class CouponBanner extends StatelessWidget {
  const CouponBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Container(
        width: SizeConfig.screenWidth * 0.9,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(getProportionateScreenWidth(10)),
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/banner1.png"))),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(12),
              vertical: getProportionateScreenHeight(14)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enjoy your first \norder, the taste of \nour delicious food!",
                style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: getProportionateScreenWidth(15)),
              ),
              SizedBox(height: getProportionateScreenHeight(8)),
              Container(
                  decoration: DottedDecoration(shape: Shape.box),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(22),
                        vertical: getProportionateScreenHeight(8)),
                    child: Text(
                      "FIRSTPLATE01",
                      style: TextStyle(
                          color: const Color(0xFFF7E5B7),
                          fontSize: getProportionateScreenWidth(13)),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
