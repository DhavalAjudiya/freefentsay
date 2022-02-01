import 'package:flutter/material.dart';
import 'package:freefentasy/screen/register.dart';
import 'package:freefentasy/screen/resetpassword.dart';
import 'package:freefentasy/widget/custom_TextFormFeild.dart';
import 'package:freefentasy/widget/custom_container.dart';
import 'package:freefentasy/widget/custom_gesturedetector.dart';
import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:freefentasy/widget/custom_style.dart';
import 'package:freefentasy/widget/customtextbutton.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _loding = false;
  int selected = 0;

  final formkey = GlobalKey<FormState>();
  final _phonecontroler = TextEditingController();
  final _passworwdcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, right: 12, left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _backicon(),
                SizedBox(
                  height: 5.h,
                ),
                _headertext(),
                SizedBox(
                  height: 5.h,
                ),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      _numbertextformfield(),
                      SizedBox(
                        height: 3.h,
                      ),
                      _passwordtextformfield(),
                      SizedBox(
                        height: 5.h,
                      ),
                      buildCustomGestureDetector(),
                      SizedBox(
                        height: 1.h,
                      ),
                      buildCustomTextStyle(),
                      buildRow(),
                      SizedBox(
                        height: 0.8.h,
                      ),
                      CustomTextStyle(
                        title: "or",
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _facebook(),
                          _google(),
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      _applelogin(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCustomTextStyle() {
    return CustomTextButton(
      onPressed: () {
        Get.to(
          ResetPassword(),
        );
      },
      child: CustomTextStyle(
        title: "Forget Password ?",
        color: Color(0XFFAB110E),
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    );
  }

  Widget buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextStyle(
          title: "Not a Member?",
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        CustomTextButton(
          onPressed: () {
            Get.to(
              Register(),
            );
          },
          child: CustomTextStyle(
            title: " Register",
            color: Color(0XFFAB110E),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget buildCustomGestureDetector() {
    return CustomGestureDetector(
      child: CustomTextStyle(
        title: "CONFIRM",
        color: Colors.white,
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
      onTap: () {
        if (formkey.currentState!.validate()) {
          print('Confirm');
        }
      },
    );
  }

  Widget _backicon() {
    return CustomIconButton(
      color: Colors.black,
      icon: Icons.arrow_back,
      onPressed: () {
        Get.back();
      },
    );
  }

  Widget _headertext() {
    return Center(
      child: CustomTextStyle(
        title: "Login",
        fontSize: 32.sp,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _numbertextformfield() {
    return CustomTextFormFiled(
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
      ],
      keyboardType: TextInputType.phone,
      hinttext: "Enter mobile number",
      labletext: "Mobile Number",
      controller: _phonecontroler,
      prefix: CustomTextStyle(
        title: '+91',
        color: Colors.black,
      ),
      validator: (_phonecontroler) {
        if (_phonecontroler!.isEmpty) {
          return "required";
        } else if (_phonecontroler.isEmpty || _phonecontroler.length < 10) {
          return "enter valid number";
        }
        return null;
      },
    );
  }

  Widget _passwordtextformfield() {
    return CustomTextFormFiled(
      hinttext: "Enter Password",
      labletext: "Password",
      controller: _passworwdcontroller,
      obscureText: _loding,
      validator: (_passworwdcontroller) {
        if (_passworwdcontroller!.isEmpty || _passworwdcontroller.length < 6) {
          return "required";
        }
        return null;
      },
      suffixIcon: CustomIconButton(
        onPressed: () {
          setState(() {
            _loding = !_loding;
          });
        },
        icon: _loding == false ? Icons.visibility : Icons.visibility_off,
        color: Colors.black,
      ),
    );
  }

  Widget _facebook() {
    return CustomContainer(
      onTap: () {
        setState(() {
          selected = 0;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/img/f.png", height: 3.h),
          CustomTextStyle(
            title: "Facebook",
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
      height: 5.h,
      border: Border.all(
        color: selected == 0 ? Colors.blue : Colors.grey,
      ),
      width: 45.w,
    );
  }

  Widget _google() {
    return CustomContainer(
      onTap: () {
        setState(() {
          selected = 1;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/img/g.png", height: 2.5.h),
          CustomTextStyle(
            title: "Google",
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
      height: 5.h,
      border: Border.all(
        color: selected == 1 ? Colors.blue : Colors.grey,
      ),
      width: 45.w,
    );
  }

  Widget _applelogin() {
    return CustomContainer(
      onTap: () {
        setState(() {
          selected = 2;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/img/a.png", height: 2.5.h),
          SizedBox(
            width: 3.w,
          ),
          CustomTextStyle(
            title: "Apple",
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
      height: 5.h,
      border: Border.all(color: selected == 2 ? Colors.blue : Colors.grey),
      // width: 45.w,
    );
  }
}
