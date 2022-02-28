import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppStyle {
  /// Winnersscreen

  static TextStyle Listofwinner = const TextStyle(fontWeight: FontWeight.w500);
  static TextStyle fcontainer = const TextStyle(color: Color(0xffAB110E));
  static TextStyle namestyle = const TextStyle(color: Colors.black38);
  static TextStyle numberstyle = const TextStyle(color: Color(0xffAB110E));

  ///dailyWinners screen
  static TextStyle dailywinner = const TextStyle(fontWeight: FontWeight.w500);
  static TextStyle dailysubtext =
      const TextStyle(color: Colors.black38, fontSize: 15);

  /// settings screen

  static TextStyle profile = const TextStyle(
      fontSize: 18, color: Color(0xffAB110E), fontWeight: FontWeight.w600);

  ///editscreen

  static TextStyle save = const TextStyle(color: Colors.white);

  /// changepassword
  static TextStyle headertext = const TextStyle(color: Colors.black38);
  static TextStyle bottun = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18);

  ///contestsceen
  static TextStyle prizetext =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 18);
  static TextStyle header = const TextStyle(fontWeight: FontWeight.w500);
  static TextStyle headers =
      const TextStyle(fontSize: 15, color: Colors.black38);

  ///create team

  static TextStyle appheader =
      const TextStyle(color: Colors.white, fontWeight: FontWeight.w500);
  static TextStyle appheaders = const TextStyle(color: Colors.white60);
  static TextStyle playing = const TextStyle(color: Colors.green);
}
