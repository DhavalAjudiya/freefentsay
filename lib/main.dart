import 'package:flutter/material.dart';
import 'package:freefentasy/screen/registration.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: RegistrationPage(),
        );
      },
    );
  }
}
