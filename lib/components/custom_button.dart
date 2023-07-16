import 'package:craftmyplate/constant.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function(BuildContext) onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(context),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(kSecondaryColor),
        backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      child: Text(text, style: const TextStyle(fontSize: 16)),
    );
  }
}
