import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextForm extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final Widget? prefix;
  final Widget? sufix;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  List<TextInputFormatter>? inputFormatters;
  TextStyle? style;

  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  TextForm({
    Key? key,
    this.hintText = '',
    required this.labelText,
    this.textInputAction,
    required this.controller,
    this.prefix,
    this.sufix,
    this.obscureText = false,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.style,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: textInputAction,
      style: style,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        // contentPadding:
        //     const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,

        labelStyle: const TextStyle(
          color: Colors.black38,
        ),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
      ),
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
    );
  }
}
