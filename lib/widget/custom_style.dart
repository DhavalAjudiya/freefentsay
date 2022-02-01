import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  final String title;

  CustomTextStyle({
    this.fontSize,
    this.fontWeight,
    this.color,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
