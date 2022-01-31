import 'package:flutter/material.dart';

class CustomGestureDetector extends StatelessWidget {
  final Widget child;
  final GestureTapCallback onTap;
  // final Color? color;

  const CustomGestureDetector({
    required this.child,
    required this.onTap,
    // this.color,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        child: child,
        width: size.width * 1,
        height: size.height * 0.057,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0XFFAB110E),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onTap: onTap,
    );
  }
}
