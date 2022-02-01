import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freefentasy/screen/loginscreen.dart';
import 'package:freefentasy/widget/custom_TextFormFeild.dart';
import 'package:freefentasy/widget/custom_container.dart';
import 'package:freefentasy/widget/custom_gesturedetector.dart';
import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:freefentasy/widget/custom_style.dart';
import 'package:freefentasy/widget/customtextbutton.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _loding = false;
  int isselected = 0;

  final formkey = GlobalKey<FormState>();
  final _phonecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _codecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
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
                height: 6.h,
              ),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    _mobilenumberrtextfield(),
                    const SizedBox(
                      height: 18,
                    ),
                    _emailaddress(),
                    const SizedBox(
                      height: 18,
                    ),
                    _passwordtextfield(),
                    const SizedBox(
                      height: 18,
                    ),
                    _codetextfield(),
                    const SizedBox(
                      height: 25,
                    ),
                    _registerbutton(),
                    const SizedBox(
                      height: 5,
                    ),
                    _alredymembertext(),
                    CustomTextStyle(
                      title: "or",
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _facebook(),
                        _google(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _applelogine(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
        title: "Register",
        fontSize: 32.sp,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _mobilenumberrtextfield() {
    return CustomTextFormFiled(
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
      ],
      keyboardType: TextInputType.phone,
      hinttext: "Enter mobile number",
      labletext: "Mobile Number",
      controller: _phonecontroller,
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

  Widget _emailaddress() {
    return CustomTextFormFiled(
      keyboardType: TextInputType.emailAddress,
      hinttext: "Email Address",
      labletext: "Email",
      controller: _emailcontroller,
      validator: (_emailcontroller) {
        if (_emailcontroller!.isEmpty) {
          return "required";
        }
        return null;
      },
    );
  }

  Widget _passwordtextfield() {
    return CustomTextFormFiled(
      hinttext: "Enter Password",
      labletext: "Password",
      controller: _passwordcontroller,
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

  Widget _codetextfield() {
    return CustomTextFormFiled(
      hinttext: "Enter Invitecode",
      labletext: "Enter Invitecode",
      controller: _codecontroller,
      obscureText: _loding,
      validator: (_codecontroller) {
        if (_codecontroller!.isEmpty || _codecontroller.length < 6) {
          return "required";
        }
        return null;
      },
    );
  }

  Widget _registerbutton() {
    return CustomGestureDetector(
      child: CustomTextStyle(
        title: "REGISTER",
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

  Widget _alredymembertext() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextStyle(
          title: "Already a Member?",
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        CustomTextButton(
          onPressed: () {
            Get.to(
              LoginScreen(),
            );
          },
          child: CustomTextStyle(
            title: " Login",
            color: Color(0XFFAB110E),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _facebook() {
    return CustomContainer(
      onTap: () {
        setState(() {
          isselected = 0;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/img/f.png", height: 2.5.h),
          CustomTextStyle(
            title: "Facebook",
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
      height: 5.h,
      border: Border.all(
        color: isselected == 0 ? Colors.blue : Colors.grey,
      ),
      width: 45.w,
    );
  }

  Widget _google() {
    return CustomContainer(
      onTap: () {
        setState(() {
          isselected = 1;
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
        color: isselected == 1 ? Colors.blue : Colors.grey,
      ),
      width: 45.w,
    );
  }

  Widget _applelogine() {
    return CustomContainer(
      onTap: () {
        setState(() {
          isselected = 2;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/img/a.png", height: 2.h),
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
      border: Border.all(color: isselected == 2 ? Colors.blue : Colors.grey),
      // width: 45.w,
    );
  }
}
