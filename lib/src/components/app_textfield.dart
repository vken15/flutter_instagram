import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldCustom extends StatelessWidget {
  TextFieldCustom({super.key,
      this.obscureText = false,
      required this.labelText,
      this.suffixIcon,
      required this.controller});
  String labelText;
  TextEditingController controller;
  Widget? suffixIcon;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: const BoxDecoration(
        color: Color.fromARGB(16, 156, 15, 15),
        //border: Border.fromBorderSide(BorderSide(width: 1)),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            labelText: labelText,
            floatingLabelStyle: TextStyle(
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
            border: InputBorder.none,
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.all(12)),
      ),
    );
  }
}