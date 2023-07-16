import 'package:craftmyplate/constant.dart';
import 'package:craftmyplate/size_config.dart';
import 'package:flutter/material.dart';

import '../../SignIn/signin_screen.dart';

class Walkbutton extends StatelessWidget {
  const Walkbutton({
    super.key,
    required this.index,
    required this.contentLength,
  });
  final int index, contentLength;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: getProportionateScreenWidth(80),
            width: contentLength == index
                ? getProportionateScreenHeight(220)
                : getProportionateScreenHeight(80),
            decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.1),
                shape: contentLength == index
                    ? BoxShape.rectangle
                    : BoxShape.circle,
                borderRadius:
                    contentLength == index ? BorderRadius.circular(40) : null),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                contentLength == index ? "Get Started" : "",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionateScreenWidth(18)),
              ),
            ),
          ),
          Positioned(
            right: contentLength == index ? 10 : null,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2)),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, SignIn.routeName);
                },
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                  size: 30,
                  color: kSecondaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
