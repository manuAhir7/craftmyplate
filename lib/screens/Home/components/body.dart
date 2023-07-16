import 'package:craftmyplate/components/searchbar.dart';
import 'package:craftmyplate/constant.dart';
import 'package:craftmyplate/screens/Home/components/couponbanner.dart';
import 'package:craftmyplate/screens/Home/components/homeheader.dart';
import 'package:craftmyplate/screens/Home/components/selectplatters.dart';
import 'package:craftmyplate/screens/Home/components/servicecard.dart';
import 'package:craftmyplate/screens/Home/components/starter_carousel.dart';
import 'package:craftmyplate/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/menucard.dart';
import 'featuresection.dart';
import 'maincourse_carousel.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> topcategories = [
    'Starters',
    'Drinks',
    'Rice',
    'Cury',
    'Desert',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(24),
              vertical: getProportionateScreenWidth(6)),
          child: const HomeHeader(),
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        SizedBox(
          height: getProportionateScreenHeight(150),
          child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CouponBanner();
              }),
        ),
        const Searchitem(),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text("Start crafting",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(20),
                  color: kPrimaryColor)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(24),
              vertical: getProportionateScreenHeight(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SelectPlatters(),
              SizedBox(width: getProportionateScreenWidth(10)),
              const SelectPlatters()
            ],
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(5)),
        SizedBox(
          height: getProportionateScreenHeight(165),
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return MenuCard(
                heading: 'Default Menu ${index + 1}',
                menuItems: const [
                  '3 starters ',
                  '3 maincourse ',
                  '3 desserts ',
                  '3 drinks ',
                ],
                price: '₹ 777',
              );
            },
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24)),
            child: SubHeading("Top Categories")),
        TopCategory(),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubHeading("Starters"),
              Text(
                "More Starters",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionateScreenWidth(12)),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(24)),
          child: SizedBox(
            height: getProportionateScreenHeight(130),
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.only(right: getProportionateScreenWidth(12)),
                  child: const Starter(),
                );
              },
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubHeading("Main Course"),
              Text(
                "More Main Courses",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionateScreenWidth(12)),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(24),
              bottom: getProportionateScreenHeight(10)),
          child: SizedBox(
            height: getProportionateScreenHeight(128),
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.only(right: getProportionateScreenWidth(12)),
                  child: const MainCourse(),
                );
              },
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24)),
            child: SubHeading("Services")),
        const ServiceCard(),
        SizedBox(height: getProportionateScreenHeight(17)),
        Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 20, right: 24),
            child: SubHeading("How does it work ?")),
        const FeatureSection(),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenHeight(24),
              bottom: getProportionateScreenHeight(47)),
          child: Text("Delicious food with professional service !",
              style: TextStyle(
                  fontSize: getProportionateScreenHeight(20),
                  fontWeight: FontWeight.w400)),
        )
      ],
    );
  }

  Padding SubHeading(String subhead) {
    return Padding(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(12),
          bottom: getProportionateScreenHeight(10)),
      child: Text(
        subhead,
        style: TextStyle(fontSize: getProportionateScreenWidth(18)),
      ),
    );
  }

  SizedBox TopCategory() {
    return SizedBox(
      height: getProportionateScreenHeight(100), // Set the height here
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topcategories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(24)),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/category${index + 1}.png",
                  height: getProportionateScreenHeight(70),
                ),
                SizedBox(height: getProportionateScreenHeight(4)),
                Text(
                  topcategories[index],
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
