import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppIcons {
  ///edit screen
  static const close = Icon(Icons.close);

  ///changepassword

  static final back = IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Icon(Icons.arrow_back));
}
