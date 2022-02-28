import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freefentasy/theam/appstyle.dart';
import 'package:freefentasy/view/coine_screen.dart';
import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget {
  final List<Widget>? actions;
  final IconData? icon;
  final bool? centerTitle;
  final String title;
  final Widget leading;

  const CustomAppbar({
    this.actions,
    required this.title,
    this.icon,
    this.centerTitle,
    required this.leading,
  });
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: AppBar(
          backgroundColor: Color(0xffab110e),
          centerTitle: true,
          title: Text(title),
          leading: leading,
          actions: [
            CustomIconButton(onPressed: () {}, icon: Icons.notifications),
            CustomIconButton(
              onPressed: () {
                Get.to(const CoineScreen());
              },
              icon: Icons.stars,
              iconSize: 20,
              color: Color(0xffF08906),
            ),
          ],
        ),
        preferredSize: Size.fromHeight(20));
  }
}

class CustomFixAppbar extends StatelessWidget {
  final Widget? leading;
  final String data;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;

  const CustomFixAppbar({
    this.leading,
    this.data = '',
    this.automaticallyImplyLeading = false,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: AppBar(
        actions: actions,
        automaticallyImplyLeading: automaticallyImplyLeading,
        backgroundColor: Color(0xffab110e),
        leading: leading,
        title: Text(
          data,
          style: TextStyle(fontSize: 15),
        ),
      ),
      preferredSize: const Size.fromHeight(41),
    );
  }
}

class CustomcontestsAppbar extends StatelessWidget {
  final Widget leading;
  final String title;
  final String firsttitle;
  final String secondtitle;
  final String subtitle;

  const CustomcontestsAppbar({
    required this.leading,
    required this.title,
    required this.firsttitle,
    required this.secondtitle,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: AppBar(
          backgroundColor: Color(0xffab110e),
          centerTitle: true,
          title: ListTile(
            title: Row(
              children: [
                Text(title, style: AppStyle.bottun),
                Text(firsttitle, style: AppStyle.save),
                Text(secondtitle, style: AppStyle.bottun),
              ],
            ),
            subtitle: Text(subtitle, style: AppStyle.save),
          ),
          leading: leading,
          actions: [
            CustomIconButton(onPressed: () {}, icon: Icons.notifications),
            CustomIconButton(
              onPressed: () {
                Get.to(const CoineScreen());
              },
              icon: Icons.stars,
              iconSize: 20,
              color: const Color(0xffF08906),
            ),
          ],
        ),
        preferredSize: Size.fromHeight(20));
  }
}
