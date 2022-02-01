import 'package:flutter/material.dart';
import 'package:freefentasy/screen/loginscreen.dart';
import 'package:freefentasy/screen/register.dart';
import 'package:freefentasy/widget/custom_container.dart';
import 'package:freefentasy/widget/custom_style.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        // width: double.infinity,
        // height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/bg.png"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 450),
          child: Column(
            children: [
              _header(),
              SizedBox(
                height: 4.h,
              ),
              _text(),
              _subtext(),
              SizedBox(
                height: 5.h,
              ),
              _Register(),
              SizedBox(
                height: 5.h,
              ),
              _loofin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return CustomTextStyle(
      title: 'Fantasy Cricket',
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 28.sp,
    );
  }

  Widget _text() {
    return CustomTextStyle(
      title: "Choose the best 11 players and create a team",
      color: Colors.white,
    );
  }

  Widget _subtext() {
    return CustomTextStyle(
      title: "best team win",
      color: Colors.white,
    );
  }

  Widget _Register() {
    return CustomContainer(
      onTap: () {
        Get.to(
          Register(),
        );
      },
      width: double.infinity,
      height: 5.2.h,
      color: Colors.white,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 20.sp),
      child: CustomTextStyle(
        title: "Register",
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _loofin() {
    return CustomContainer(
      onTap: () {
        Get.to(
          LoginScreen(),
        );
      },
      width: double.infinity,
      height: 5.2.h,
      alignment: Alignment.center,
      border: Border.all(
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(horizontal: 20.sp),
      child: CustomTextStyle(
        title: "Login",
        fontSize: 18.sp,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
