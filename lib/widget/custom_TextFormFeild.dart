import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String hinttext;
  final String labletext;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefix;
  String? Function(String?)? validator;

  CustomTextFormFiled({
    required this.hinttext,
    required this.labletext,
    required this.controller,
    this.obscureText = false,
    this.suffixIcon,
    this.prefix,
    this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefix: prefix,
            suffixIcon: suffixIcon,
            hintText: hinttext,
            labelText: labletext,
            labelStyle: const TextStyle(color: Colors.black)),
        controller: controller,
        textInputAction: TextInputAction.next,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator);
  }
}
