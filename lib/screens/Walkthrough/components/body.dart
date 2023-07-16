import 'package:craftmyplate/screens/Walkthrough/components/walk_content.dart';
import 'package:craftmyplate/screens/Walkthrough/components/walkbutton.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> walkdata = [
    {
      "headtext": "Create Your Own Plate",
      "text":
          "Create unforgettable memories with our unique feature to curate your favorite cuisines and food, tailored to your special occasion.",
      "image": "assets/images/walkthrough1.svg"
    },
    {
      "headtext": "Exquisite Catering",
      "text":
          "Experience culinary artistry like never before with our innovative and exquisite cuisine creations",
      "image": "assets/images/walkthrough2.svg"
    },
    {
      "headtext": "Personal Order Executive",
      "text":
          "Embark on a personalized culinary journey with our dedicated one-to-one customer support, ensuring a seamless and satisfying experience every step of the way.",
      "image": "assets/images/walkthrough3.svg"
    },
  ];

  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(getProportionateScreenHeight(15)),
      child: Column(children: [
        SizedBox(height: getProportionateScreenWidth(20)),
        Skipbutton(),
        Expanded(
            flex: 3,
            child: PageView.builder(
                controller: pageController,
                onPageChanged: (int index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemCount: walkdata.length,
                itemBuilder: (context, index) => WalkContent(
                      image: walkdata[index]["image"],
                      headtext: walkdata[index]['headtext'],
                      text: walkdata[index]["text"],
                    ))),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    walkdata.length,
                    (index) => buildDot(index: index),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(32)),
                Walkbutton(
                  index: currentPage,
                  contentLength: walkdata.length - 1,
                ),
                SizedBox(height: getProportionateScreenHeight(42)),
              ],
            ),
          ),
        ),
      ]),
    ));
  }

  Row Skipbutton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
            onTap: () {
              setState(() {
                currentPage = walkdata.length - 1;
                pageController.animateToPage(
                  currentPage,
                  duration: kAnimationDuration,
                  curve: Curves.easeOut,
                );
              });
            },
            child: Container(
              height: getProportionateScreenHeight(28),
              width: getProportionateScreenWidth(65),
              decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                ),
              ),
            )),
      ],
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 10),
      height: 8,
      width: 24,
      decoration: BoxDecoration(
        color: currentPage == index
            ? kPrimaryColor
            : kPrimaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
