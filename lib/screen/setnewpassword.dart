import 'package:flutter/material.dart';
import 'package:freefentasy/widget/custom_TextFormFeild.dart';
import 'package:freefentasy/widget/custom_gesturedetector.dart';
import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:freefentasy/widget/custom_style.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [
          Column(
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
                    const SizedBox(
                      height: 20,
                    ),
                    _headertext(),
                    SizedBox(height: 20.h),
                    _password(),
                    const SizedBox(height: 20),
                    _confirmpassword(),
                    const SizedBox(height: 20),
                    _button(),
                    const SizedBox(height: 20),
                    _Row(),
                  ],
                ),
              ),
            ],
          ),
        ],
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
        fontSize: 32,
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
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            _islonding = !_islonding;
          });
        },
        icon: Icon(
          _islonding == false ? Icons.visibility : Icons.visibility_off,
        ),
      ),
    );
  }

  Widget _confirmpassword() {
    return CustomTextFormFiled(
      hinttext: "Enter Confirm Password",
      labletext: "Confirm Password",
      controller: _confirmpasswordcontroller,
      obscureText: _isselect,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            _isselect = !_isselect;
          });
        },
        icon: Icon(
          _isselect == false ? Icons.visibility : Icons.visibility_off,
        ),
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
      onTap: () {},
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
        CustomTextStyle(
          title: " Register",
          color: Colors.red,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ],
    );
  }
}
