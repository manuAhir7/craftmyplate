import 'package:craftmyplate/constant.dart';
import 'package:craftmyplate/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        featureItem.length,
        (index) => FeatureRow1(
          rowNumber: index,
          heading: featureItem[index]['heading']!,
          subhead: featureItem[index]['subhead']!,
          featureicon: featureItem[index]['image']!,
        ),
      ),
    );
  }
}

class FeatureRow1 extends StatelessWidget {
  final int rowNumber;
  final String heading;
  final String subhead;
  final String featureicon;

  const FeatureRow1(
      {required this.rowNumber,
      required this.heading,
      required this.subhead,
      required this.featureicon,
      super.key});

  bool isOddRow() {
    return rowNumber % 2 != 0;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(24),
          right: getProportionateScreenWidth(24),
          bottom: getProportionateScreenHeight(40)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (isOddRow())
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: getProportionateScreenHeight(15),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: getProportionateScreenHeight(4)),
                Text(
                  subhead,
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(13),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          SizedBox(width: isOddRow() ? 2 : 0),
          SvgPicture.asset(
            featureicon,
            height: getProportionateScreenHeight(70),
          ),
          SizedBox(width: isOddRow() ? 5 : 0),
          if (!isOddRow())
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: getProportionateScreenHeight(15),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: getProportionateScreenHeight(4)),
                Text(
                  subhead,
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(13),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

final List<Map<String, String>> featureItem = [
  {
    "heading": "Customize Menu",
    "subhead": "Select items for a single\nevent or multiple events",
    "image":
        "assets/icons/feature0.svg", // Replace "asse" with the actual image path
  },
  // You can add more items to the list if needed
  {
    "heading": "Choose Services",
    "subhead":
        "Select the type of services\nfrom varying cutlery, mode of\nserving options, & more",
    "image": "assets/icons/feature1.svg", // Replace with the actual image path
  },
  {
    "heading": "Dynamic Pricing",
    "subhead":
        "Price per plate varies with no.\nof items in a plate and no. of\nplates selected",
    "image": "assets/icons/feature2.svg", // Replace with the actual image path
  },
  {
    "heading": "Track Your Order",
    "subhead":
        "Track the order status and\nseek help from the executives\nanytime",
    "image": "assets/icons/feature3.svg", // Replace with the actual image path
  },
  {
    "heading": "Taste Your Samples",
    "subhead":
        "Explode your taste bud with\nsamples of what you order(on\nrequest for eligible orders)",
    "image": "assets/icons/feature4.svg", // Replace with the actual image path
  },
  {
    "heading": "Enjoy Food and Services",
    "subhead": "Enjoy event with delicious\nand customized food",
    "image": "assets/icons/feature5.svg", // Replace with the actual image path
  },
  // Add more items here as required
];
