import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freefentasy/screen/otpscreen.dart';
import 'package:freefentasy/screen/register.dart';
import 'package:freefentasy/widget/custom_TextFormFeild.dart';
import 'package:freefentasy/widget/custom_gesturedetector.dart';
import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:freefentasy/widget/custom_style.dart';
import 'package:freefentasy/widget/customtextbutton.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final formkey = GlobalKey<FormState>();
  final _phonecontroler = TextEditingController();
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
                height: 8.h,
              ),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    _mobilenumbertextfield(),
                    const SizedBox(
                      height: 30,
                    ),
                    _sendotpbutton(),
                    const SizedBox(
                      height: 20,
                    ),
                    _textwidget(),
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
        title: "Reset Password",
        fontSize: 30.sp,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _mobilenumbertextfield() {
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

  Widget _sendotpbutton() {
    return CustomGestureDetector(
      child: CustomTextStyle(
        title: "SEND OTP",
        color: Colors.white,
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
      onTap: () {
        if (formkey.currentState!.validate()) {
          Get.to(OtpScreen(number: _phonecontroler.text));
        }
      },
    );
  }

  Widget _textwidget() {
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
}
