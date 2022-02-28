import 'package:flutter/material.dart';
import 'package:freefentasy/theam/app_color.dart';
import 'package:freefentasy/theam/appstyle.dart';
import 'package:freefentasy/untils/appstring.dart';
import 'package:freefentasy/view/dailywinner.dart';
import 'package:freefentasy/widget/custom_container.dart';
import 'package:freefentasy/widget/customappbar.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/velocity_x.dart';

class WinenerScreen extends StatefulWidget {
  const WinenerScreen({Key? key}) : super(key: key);

  @override
  _WinenerScreenState createState() => _WinenerScreenState();
}

class _WinenerScreenState extends State<WinenerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: CustomFixAppbar(
          actions: [
            const Icon(Icons.assignment_late_outlined).p8(),
          ],
          data: AppString.Apptitle,
          automaticallyImplyLeading: false,
        ),
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Text(),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 7,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 2.h,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return _winnersscreen();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _Text() {
    return Text(
      AppString.Listofwinner,
      style: AppStyle.Listofwinner,
    );
  }

  Widget _winnersscreen() {
    return CustomContainer(
      height: 26.h,
      color: AppColors.whitecolor,
      child: Column(
        children: [
          Container(
            height: 5.h,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    AppString.fcontianer,
                    style: AppStyle.fcontainer,
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Get.to(
                        const DailyWinnerScreen(),
                      );
                    },
                    child: Text(
                      AppString.fcontainers,
                      style: AppStyle.fcontainer,
                    ),
                  ),
                ],
              ),
            ),
            decoration: const BoxDecoration(
              color: AppColors.containercolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          Container(
            height: 20.h,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: CustomContainer(
                    height: 20.h,
                    width: 30.w,
                    color: AppColors.secondcontainercolor,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/img/adity.png"),
                                radius: 25.sp,
                              ),
                              Positioned(
                                right: -4,
                                child: CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  backgroundImage:
                                      AssetImage("assets/img/stack.png"),
                                  radius: 10.sp,
                                ),
                              ),
                            ],
                            overflow: Overflow.visible,
                          ),
                          Text(
                            AppString.name,
                            style: AppStyle.namestyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppString.number,
                                style: AppStyle.numberstyle,
                              ),
                              const Icon(
                                Icons.stars,
                                color: Colors.amber,
                                size: 18,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
