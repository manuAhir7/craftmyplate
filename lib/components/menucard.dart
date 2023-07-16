import 'package:craftmyplate/constant.dart';
import 'package:craftmyplate/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuCard extends StatelessWidget {
  final String heading;
  final List<String> menuItems;
  final String price;

  const MenuCard(
      {super.key,
      required this.heading,
      required this.menuItems,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(24),
              top: getProportionateScreenHeight(5),
              right: getProportionateScreenWidth(7),
              bottom: getProportionateScreenWidth(5)),
          child: menuBox(),
        ),
        Positioned(
          left: getProportionateScreenWidth(0),
          top: getProportionateScreenHeight(20),
          child: Image.asset(
            "assets/images/plate.png",
            height: getProportionateScreenHeight(90),
            width: getProportionateScreenWidth(105),
          ),
        ),
      ],
    );
  }

  Container menuBox() {
    return Container(
      width: getProportionateScreenWidth(159),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
          border: Border.all(
            color: kSecondaryTextColor.withOpacity(0.2),
            width: 1.0,
          ),
          boxShadow: [
            BoxShadow(
              color: kSecondaryTextColor.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(10),
                top: getProportionateScreenHeight(5)),
            child: Text(
              heading,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(11),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(11)),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: getProportionateScreenWidth(11)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    menuItems.length,
                    (index) => Text(menuItems[index],
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(10)))),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(11)),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(10),
                top: getProportionateScreenHeight(5)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/user.svg",
                  height: getProportionateScreenHeight(10),
                  colorFilter:
                      const ColorFilter.mode(kIconColor, BlendMode.srcIn),
                ),
                SizedBox(width: getProportionateScreenWidth(5)),
                Text(
                  "Min 800",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(11),
                      color: kIconColor),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(10),
                top: getProportionateScreenHeight(8)),
            child: Row(
              children: [
                Text("Starts At",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(12),
                      color: kPrimaryColor,
                    )),
                SizedBox(width: getProportionateScreenWidth(5)),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
