import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:sizer/sizer.dart';

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
              onPressed: () {},
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

  const CustomFixAppbar({
    this.leading,
    this.data = '',
    this.automaticallyImplyLeading = false,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: AppBar(
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
