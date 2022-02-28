import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freefentasy/theam/app_color.dart';
import 'package:freefentasy/theam/appstyle.dart';
import 'package:freefentasy/untils/appstring.dart';
import 'package:freefentasy/view/editscreen.dart';
import 'package:freefentasy/view/eranfreecoin.dart';
import 'package:freefentasy/widget/custom_container.dart';
import 'package:freefentasy/widget/customappbar.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/src/flutter/padding.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: CustomFixAppbar(
          data: AppString.settingappbar,
          automaticallyImplyLeading: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _profilecontainer(),
            SizedBox(
              height: 2.h,
            ),
            _moreoptioncontainer(),
          ],
        ),
      ),
    );
  }

  Widget _profilecontainer() {
    return CustomContainer(
      height: 14.h,
      color: AppColors.whitecolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              AppString.settingprofile,
              style: AppStyle.profile,
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/img/profile.jpeg"),
            ),
            title: const Text(AppString.settingemail),
            subtitle: const Text(AppString.settingnumber),
            trailing: IconButton(
                onPressed: () {
                  Get.to(ProfileScreen());
                },
                icon: Icon(Icons.edit)),
          ),
        ],
      ),
    );
  }

  Widget _moreoptioncontainer() {
    return CustomContainer(
      color: AppColors.whitecolor,
      height: 54.7.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.settingmoreoption,
            style: AppStyle.profile,
          ).p12(),
          ListTile(
            leading: Image.asset(
              "assets/img/point.png",
              height: 2.3.h,
            ),
            title: const Text(AppString.settingpoint),
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            leading: Image.asset(
              "assets/img/privacy.png",
              height: 2.3.h,
            ),
            title: const Text(AppString.settingprivacy),
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            leading: Image.asset(
              "assets/img/term.png",
              height: 2.3.h,
            ),
            title: const Text(AppString.settingterm),
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            leading: Image.asset(
              "assets/img/share.png",
              height: 2.3.h,
            ),
            title: const Text(AppString.settingshare),
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            onTap: () {
              Get.to(
                const Fraind(),
              );
            },
            leading: Image.asset(
              "assets/img/referral.png",
              height: 2.3.h,
            ),
            title: const Text(AppString.settingrefrrral),
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            leading: Image.asset(
              "assets/img/contact.png",
              height: 2.3.h,
            ),
            title: const Text(AppString.settingcontaactus),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          const Divider(
            height: 0,
          ),
          InkWell(
            onTap: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              } else if (Platform.isMacOS) {}
            },
            child: const ListTile(
              leading: Icon(Icons.logout),
              title: Text(AppString.LOGOUT),
            ),
          ),
        ],
      ),
    );
  }
}
