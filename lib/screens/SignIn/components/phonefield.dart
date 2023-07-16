import 'package:country_picker/country_picker.dart';
import 'package:craftmyplate/constant.dart';
import 'package:craftmyplate/size_config.dart';
import 'package:flutter/material.dart';
import 'package:craftmyplate/components/green_mark.dart';

class BuildPhoneField extends StatefulWidget {
  const BuildPhoneField({super.key});

  @override
  State<BuildPhoneField> createState() => _BuildPhoneFieldState();
}

class _BuildPhoneFieldState extends State<BuildPhoneField> {
  final TextEditingController phoneController = TextEditingController();

  Country selectedCountry = Country(
    phoneCode: "91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "India",
    example: "India",
    displayName: "India",
    displayNameNoCountryCode: "IN",
    e164Key: "",
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      keyboardType: TextInputType.number,
      controller: phoneController,
      style: TextStyle(
        fontSize: getProportionateScreenWidth(18),
        fontWeight: FontWeight.w400,
      ),
      onChanged: (value) {
        setState(() {
          phoneController.value = phoneController.value.copyWith(
            text: value,
            selection: TextSelection.collapsed(offset: value.length),
          );
        });
      },
      decoration: InputDecoration(
        hintText: "Enter phone number",
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: getProportionateScreenWidth(17.5),
          color: kSecondaryTextColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: kFormColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: kFormColor),
          gapPadding: 10,
        ),
        prefixIcon: Container(
          padding: EdgeInsets.all(getProportionateScreenHeight(10)),
          child: InkWell(
            onTap: () {
              showCountryPicker(
                  context: context,
                  countryListTheme: CountryListThemeData(
                    bottomSheetHeight: getProportionateScreenHeight(450),
                  ),
                  onSelect: (value) {
                    setState(() {
                      selectedCountry = value;
                    });
                  });
            },
            child: Text(
              " +${selectedCountry.phoneCode}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: kTextColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        suffixIcon: phoneController.text.length > 9 ? const GreenTick() : null,
      ),
    );
  }
}
