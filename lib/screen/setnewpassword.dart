import 'package:flutter/material.dart';
import 'package:freefentasy/screen/register.dart';
import 'package:freefentasy/widget/custom_TextFormFeild.dart';
import 'package:freefentasy/widget/custom_gesturedetector.dart';
import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:freefentasy/widget/custom_style.dart';
import 'package:freefentasy/widget/customtextbutton.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SetNewpassword extends StatefulWidget {
  const SetNewpassword({Key? key}) : super(key: key);

  @override
  _SetNewpasswordState createState() => _SetNewpasswordState();
}

class _SetNewpasswordState extends State<SetNewpassword> {
  bool _islonding = false;
  bool _isselect = false;
  final _passworwdcontroller = TextEditingController();
  final _confirmpasswordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                right: 12,
                left: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _backicon(),
                  SizedBox(
                    height: 10.h,
                  ),
                  _headertext(),
                  SizedBox(height: 10.h),
                  Form(
                    key: formkey,
                    child: Column(
                      children: [
                        _password(),
                        SizedBox(height: 3.h),
                        _confirmpassword(),
                        SizedBox(height: 5.h),
                        _button(),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),
                  _Row(),
                ],
              ),
            ),
          ],
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
        title: "Set New Password",
        fontSize: 32.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _password() {
    return CustomTextFormFiled(
      hinttext: "Enter Password",
      labletext: "Password",
      controller: _passworwdcontroller,
      obscureText: _islonding,
      validator: (_passworwdcontroller) {
        if (_passworwdcontroller!.isEmpty || _passworwdcontroller.length < 6) {
          return "required";
        }
        return null;
      },
      suffixIcon: CustomIconButton(
        iconSize: 20,
        onPressed: () {
          setState(() {
            _islonding = !_islonding;
          });
        },
        icon: _islonding == false ? Icons.visibility : Icons.visibility_off,
        color: _islonding == false ? Colors.black : Colors.grey,
      ),
    );
  }

  Widget _confirmpassword() {
    return CustomTextFormFiled(
      hinttext: "Enter Confirm Password",
      labletext: "Confirm Password",
      controller: _confirmpasswordcontroller,
      obscureText: _isselect,
      suffixIcon: CustomIconButton(
        iconSize: 20,
        onPressed: () {
          setState(() {
            _isselect = !_isselect;
          });
        },
        icon: _isselect == false ? Icons.visibility : Icons.visibility_off,
        color: _isselect == false ? Colors.black : Colors.grey,
      ),
      validator: (_confirmpasswordcontroller) {
        if (_confirmpasswordcontroller != _passworwdcontroller.text) {
          return "password not match";
        }
      },
    );
  }

  Widget _button() {
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

  Widget _Row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextStyle(
          title: "Not a Member?",
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
