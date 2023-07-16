import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class Starter extends StatelessWidget {
  const Starter({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/otpscreen");
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 2.5,
        shadowColor: kSecondaryTextColor.withOpacity(0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getProportionateScreenHeight(83),
              width: getProportionateScreenWidth(136),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/starter1.png"))),
            ),
            Padding(
              padding: EdgeInsets.all(getProportionateScreenWidth(8)),
              child: Text(
                "Biryani",
                style: TextStyle(fontSize: getProportionateScreenWidth(14)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
