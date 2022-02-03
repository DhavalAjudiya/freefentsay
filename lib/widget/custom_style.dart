import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? letterSpacing;

  final String title;

  CustomTextStyle({
    this.fontSize,
    this.fontWeight,
    this.color,
    required this.title,
    this.letterSpacing,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
