import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? color;
  final double iconSize;

  CustomIconButton({
    required this.onPressed,
    this.color,
    this.iconSize = 30,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      iconSize: iconSize,
      icon: Icon(
        icon,
        color: color,
      ),
    );
  }
}
