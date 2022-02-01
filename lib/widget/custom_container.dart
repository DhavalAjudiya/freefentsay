import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final GestureTapCallback? onTap;
  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;
  final DecorationImage? image;
  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignment;

  final BoxBorder? border;

  const CustomContainer({
    this.height,
    this.width,
    this.color,
    this.image,
    this.border,
    this.child,
    this.alignment,
    this.margin,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: alignment,
        height: height,
        width: width,
        child: child,
        margin: margin,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          image: image,
          border: border,
        ),
      ),
    );
  }
}
