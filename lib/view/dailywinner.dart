import 'package:flutter/material.dart';
import 'package:freefentasy/theam/app_color.dart';
import 'package:freefentasy/theam/appstyle.dart';
import 'package:freefentasy/untils/appstring.dart';
import 'package:freefentasy/widget/custom_container.dart';
import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:freefentasy/widget/customappbar.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/src/flutter/padding.dart';

class DailyWinnerScreen extends StatefulWidget {
  const DailyWinnerScreen({Key? key}) : super(key: key);

  @override
  _DailyWinnerScreenState createState() => _DailyWinnerScreenState();
}

class _DailyWinnerScreenState extends State<DailyWinnerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: CustomFixAppbar(
          leading: CustomIconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icons.arrow_back,
          ),
          actions: [
            const Icon(Icons.assignment_late_outlined).p8(),
          ],
          data: AppString.apptitle,
          automaticallyImplyLeading: false,
        ),
      ),
      backgroundColor: AppColors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.dailywinner,
            style: AppStyle.dailywinner,
          ).p12(),
          // SizedBox(
          //   height: 2.h,
          // ),
          Expanded(child: _dailywinnerlist()),
        ],
      ),
    );
  }

  Widget _dailywinnerlist() {
    return CustomContainer(
      color: AppColors.whitecolor,
      height: double.infinity,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/img/adity.png"),
                radius: 25.sp,
              ),
              Column(
                children: [
                  Text(AppString.name),
                  Text(
                    AppString.dailywinnersubtext,
                    style: AppStyle.dailysubtext,
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    AppString.trillingname,
                    style: AppStyle.numberstyle,
                  ),
                  const Icon(
                    Icons.stars,
                    size: 15,
                    color: AppColors.icon,
                  ),
                ],
              ),
            ],
          ).p8();
        },
        itemCount: 20,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 0,
          );
        },
      ),
    );
  }
}
