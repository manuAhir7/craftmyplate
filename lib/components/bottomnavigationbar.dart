import 'package:craftmyplate/constant.dart';
import 'package:craftmyplate/screens/Home/home.dart';
import 'package:craftmyplate/screens/SignIn/signin_screen.dart';
import 'package:craftmyplate/screens/SignUp/signup_screen.dart';
import 'package:craftmyplate/screens/Walkthrough/walkthrough_screen.dart';
import 'package:craftmyplate/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  static String routeName = "/bottombar";

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentTab = 0; // to keep track of active tab index

  final List<Widget> screens = [
    const Home(),
    const Walkthrough(),
    const SignUp(),
    const SignIn(),
  ];

  final List<String> labels = [
    'Home',
    'Wishlist',
    'Orders',
    'Profile',
  ];

  final List<String> iconType = [
    'home_icon',
    'wishlist_icon',
    'orders_icon',
    'profile_icon',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButton: IgnorePointer(
        ignoring: true,
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: SvgPicture.asset(
            "assets/images/fab.svg",
            height: 51,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[currentTab],
      bottomNavigationBar: BottomAppBar(
        elevation: 5.0,
        child: SizedBox(
          height: 60,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(labels.length, (index) {
                String Icon = "assets/icons/${iconType[index]}.svg";
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentTab = index;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(18),
                        right: getProportionateScreenWidth(17)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          Icon,
                          height: getProportionateScreenWidth(32),
                          colorFilter: currentTab == index
                              ? const ColorFilter.mode(
                                  kPrimaryColor, BlendMode.srcIn)
                              : const ColorFilter.mode(
                                  kIconColor, BlendMode.srcIn),
                        ),
                        SizedBox(height: getProportionateScreenHeight(4)),
                        Text(
                          labels[index],
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(10),
                            color: currentTab == index
                                ? kPrimaryColor
                                : kSecondaryTextColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
