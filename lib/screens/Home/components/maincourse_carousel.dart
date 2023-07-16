import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class MainCourse extends StatelessWidget {
  const MainCourse({super.key});

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
                      image: AssetImage("assets/images/maincourse1.png"))),
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

//  decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(
//                 width: 1.0, color: kSecondaryTextColor.withOpacity(0.1)),
//             color: kSecondaryColor,
//             boxShadow: [
//               BoxShadow(
//                 color: kSecondaryTextColor.withOpacity(0.1),
//                 spreadRadius: 1,
//                 blurRadius: 2,
//                 offset: const Offset(0, 2),
//               ),
//             ]),