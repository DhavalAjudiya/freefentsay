import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/src/flutter/padding.dart';

class CustomContainer extends StatelessWidget {
  final String data;
  final String title;
  final String continertitle;
  final String secondcontinertitle;
  final String text;
  final String subtitle;
  final String secondsubtitle;
  final BoxBorder? border;
  final IconData? icon;
  final ImageProvider? backgroundImage;
  final ImageProvider? backgroundImg;

  CustomContainer({
    this.data = "",
    this.title = "",
    this.text = "",
    this.subtitle = '',
    this.secondsubtitle = '',
    this.backgroundImage,
    this.backgroundImg,
    this.border,
    this.continertitle = '',
    this.secondcontinertitle = '',
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 14.5.h,
      width: 90.w,
      decoration: BoxDecoration(
        color: const Color(0xffF6F6F6),
        boxShadow: const [
          BoxShadow(
              offset: Offset(0, 3),
              color: Colors.black12,
              blurRadius: 2,
              spreadRadius: 0),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 11.4.h,
            // width: 90.w,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  child: Row(
                    children: [
                      Text(data),
                      const Spacer(),
                      const Icon(
                        Icons.notifications_none_outlined,
                        size: 23,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 0,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(title),
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: backgroundImage,
                      ),
                      Text(subtitle),
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: backgroundImg,
                      ),
                      Text(secondsubtitle),
                    ],
                  ),
                ),
              ],
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
            child: Row(
              children: [
                Text(text),
                Container(
                  alignment: Alignment.center,
                  height: 2.h,
                  width: 12.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: border,
                  ),
                  child: Text(
                    continertitle,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.green),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(secondcontinertitle),
                SizedBox(
                  width: 2.w,
                ),
                Icon(
                  icon,
                  size: 15,
                  color: Color(0xffF08906),
                ),
                const Spacer(),
                const Icon(
                  Icons.watch_later_outlined,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
