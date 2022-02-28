import 'package:flutter/material.dart';
import 'package:freefentasy/theam/appicon.dart';
import 'package:freefentasy/theam/appstyle.dart';
import 'package:freefentasy/untils/appstring.dart';
import 'package:freefentasy/view/setting_screen.dart';
import 'package:freefentasy/widget/custom_gesturedetector.dart';
import 'package:freefentasy/widget/customappbar.dart';
import 'package:freefentasy/widget/textform.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ChangPassword extends StatefulWidget {
  const ChangPassword({Key? key}) : super(key: key);

  @override
  _ChangPasswordState createState() => _ChangPasswordState();
}

class _ChangPasswordState extends State<ChangPassword> {
  final _formkey = GlobalKey<FormState>();
  final _oldpasswordcontroller = TextEditingController();
  final _newpasswordcontroller = TextEditingController();
  final _confirmpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: CustomFixAppbar(
          leading: AppIcons.back, data: AppString.appbartext, // leading: ,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppString.headertext,
                style: AppStyle.headertext,
              ),
              Text(
                AppString.headertitle,
                style: AppStyle.headertext,
              ),
              SizedBox(
                height: 3.h,
              ),
              _form(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _form() {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            TextForm(
              labelText: AppString.textformoldpassword,
              controller: _oldpasswordcontroller,
            ),
            SizedBox(
              height: 2.h,
            ),
            TextForm(
              labelText: AppString.textformnewpassword,
              controller: _newpasswordcontroller,
              validator: (_newpasswordcontroller) {
                if (_newpasswordcontroller!.isEmpty) {
                  return "required";
                } else if (_newpasswordcontroller.isEmpty ||
                    _newpasswordcontroller.length < 6) {
                  return "enter valid number";
                }
                return null;
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            TextForm(
              labelText: AppString.textformconfirmpassword,
              controller: _confirmpasswordcontroller,
              validator: (_confirmpasswordcontroller) {
                if (_confirmpasswordcontroller != _newpasswordcontroller.text) {
                  return "not match";
                }
                return null;
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomGestureDetector(
                child: Text(
                  AppString.buttontext,
                  style: AppStyle.bottun,
                ),
                onTap: () {
                  if (_formkey.currentState!.validate()) {
                    Get.to(SettingScreen());
                  }
                }),
          ],
        ));
  }
}
