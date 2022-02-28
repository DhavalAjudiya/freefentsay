import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomImahe extends StatelessWidget {
  final BoxBorder? border;
  final Color? color;
  final Color? colors;
  final String data;
  final String title;
  final double? fontSize;

  const CustomImahe({
    this.border,
    required this.data,
    required this.title,
    this.color,
    this.colors,
    this.fontSize,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Image.asset("assets/img/person.png", height: 8.h),
        Positioned(
          child: Container(
              height: 5.h,
              width: 5.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: color,
                border: border,
                shape: BoxShape.circle,
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: colors,
                  fontSize: fontSize,
                ),
              )),
        ),
        Positioned(
          bottom: -2.h,
          right: -1.h,
          child: Container(
            height: 3.h,
            width: 25.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.black),
            child: Text(
              data,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

class ImageCustom extends StatelessWidget {
  final String data;
  final String title;

  ImageCustom({
    required this.data,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Image.asset("assets/img/player.png", height: 8.h),
        Positioned(
          bottom: 2.7.h,
          left: 0.5.w,
          child: Container(
            height: 1.5.h,
            width: 7.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 1.h,
          left: 0.5.w,
          child: Container(
            height: 1.5.h,
            width: 7.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green,
            ),
            child: Text(
              data,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
