import 'package:craftmyplate/constant.dart';
import 'package:craftmyplate/size_config.dart';
import 'package:flutter/material.dart';

class Searchitem extends StatelessWidget {
  const Searchitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(28),
          horizontal: getProportionateScreenWidth(24)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kSecondaryColor,
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.1),
              offset: const Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: TextField(
          style: TextStyle(decoration: TextDecoration.none),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            hintText: "Search food or events",
            hintStyle: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                fontWeight: FontWeight.w400),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black12),
            ),
            suffixIcon: Icon(
              Icons.search,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
