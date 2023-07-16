import 'package:craftmyplate/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(390),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: ((context, index) {
            return Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(24)),
              child: Container(
                width: getProportionateScreenWidth(310),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
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
                child: Padding(
                  padding: EdgeInsets.all(getProportionateScreenHeight(16)),
                  child: Column(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(120),
                        width: getProportionateScreenWidth(285),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image:
                                    AssetImage("assets/images/services1.png"))),
                      ),
                      SizedBox(height: getProportionateScreenHeight(16)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Image.asset("assets/images/badge2.png",
                                height: getProportionateScreenHeight(28)),
                            SizedBox(width: getProportionateScreenWidth(8)),
                            Text(
                              "Signature",
                              style: TextStyle(
                                  fontSize: getProportionateScreenHeight(18),
                                  color: kPrimaryColor),
                            )
                          ]),
                          SizedBox(height: getProportionateScreenHeight(8)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              5,
                              (index) => Padding(
                                padding: EdgeInsets.only(
                                    bottom: getProportionateScreenHeight(11)),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/staricon.svg",
                                      height: getProportionateScreenHeight(16),
                                    ),
                                    Text(
                                      "High Quality Disposable Cutlery",
                                      style: TextStyle(
                                          fontSize:
                                              getProportionateScreenHeight(14)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(5)),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "Know more",
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(12),
                                        color: kPrimaryColor),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
