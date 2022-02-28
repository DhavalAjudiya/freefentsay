import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freefentasy/theam/app_color.dart';
import 'package:freefentasy/theam/appicon.dart';
import 'package:freefentasy/theam/appstyle.dart';
import 'package:freefentasy/untils/appstring.dart';
import 'package:freefentasy/view/changepassword.dart';
import 'package:freefentasy/widget/custom_container.dart';
import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:freefentasy/widget/customappbar.dart';
import 'package:freefentasy/widget/textform.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final formkey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final emailidController = TextEditingController();
  final passwordController = TextEditingController();
  final statecontrooler = TextEditingController();
  final state = TextEditingController();

  File? _image;

  Future getImagefromcamera() async {
    var image =
        await ImagePicker.platform.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image as File?;
    });
  }

  Future getImagefromgallery() async {
    var image =
        await ImagePicker.platform.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image as File?;
    });
  }

  List<String> _locations = [
    'Gujrat',
    'Maharastra',
    'goa',
    'rajasthan',
    'mp',
    "up",
    "bihar"
  ];
  // String? _selectedLocation = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
        child: _appbar(),
        preferredSize: Size.fromHeight(40),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              _imageuplod(),
              20.heightBox,
              _detail(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _appbar() {
    return CustomFixAppbar(
      data: AppString.appbartitle,
      leading: AppIcons.close,
      actions: [
        TextButton(
          onPressed: () {
            if (formkey.currentState!.validate()) {
              Get.back();
            }
          },
          child: Text(
            AppString.appbaraction,
            style: AppStyle.save,
          ),
        ),
      ],
    );
  }

  Widget _imageuplod() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Center(
        child: InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return CustomContainer(
                  height: 12.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomIconButton(
                        icon: Icons.camera_alt,
                        onPressed: () {
                          getImagefromcamera();
                          print("camera");
                        },
                      ),
                      CustomIconButton(
                        icon: Icons.photo,
                        onPressed: () {
                          getImagefromgallery();
                          print("photo");
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: CircleAvatar(
            radius: 60,
            child: _image == null
                ? Text("IMAGE NOT SELECTED")
                : Image.file(_image!),
          ),
        ),
      ),
    );
  }

  Widget _detail() {
    return Form(
      key: formkey,
      child: Column(
        children: [
          TextForm(
            hintText: 'first name',
            controller: nameController,
            labelText: 'First Name',
          ),
          20.heightBox,
          TextForm(
            keyboardType: TextInputType.number,
            inputFormatters: [LengthLimitingTextInputFormatter(10)],
            prefix: const Text(
              "+91",
              style: TextStyle(color: Colors.black),
            ),
            hintText: 'mobile nomber',
            controller: numberController,
            labelText: 'Mobile Number',
            validator: (numberController) {
              if (numberController!.isEmpty) {
                return "required";
              } else if (numberController.isEmpty ||
                  numberController.length < 10) {
                return "enter valid number";
              }
              return null;
            },
          ),
          20.heightBox,
          TextForm(
            hintText: 'email id',
            controller: emailidController,
            labelText: 'Enter Email Id',
          ),
          20.heightBox,
          TextForm(
            hintText: 'change Passwword',
            controller: passwordController,
            labelText: 'change Passwword',
            validator: (passwordController) {
              if (passwordController!.isEmpty) {
                return "required";
              }
              return null;
            },
            suffixIcon: CustomIconButton(
              onPressed: () {
                Get.to(ChangPassword());
              },
              icon: Icons.arrow_forward_ios,
              color: Colors.black,
              iconSize: 20,
            ),
          ),
          20.heightBox,
          TextForm(
            hintText: 'state',
            controller: statecontrooler,
            labelText: 'state',
            suffixIcon: DropdownButton(
              underline: SizedBox(),
              // value: location,
              items: _locations.map(
                (location) {
                  return DropdownMenuItem(
                    child: Text(location),
                    value: location,
                    onTap: () {
                      setState(() {
                        statecontrooler.text = location;
                      });
                    },
                  );
                },
              ).toList(),
              onChanged: (_) {},
            ),
          ),
        ],
      ),
    );
  }
}
