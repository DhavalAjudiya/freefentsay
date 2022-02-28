import 'package:flutter/material.dart';
import 'package:freefentasy/theam/app_color.dart';
import 'package:freefentasy/theam/appicon.dart';
import 'package:freefentasy/theam/appstyle.dart';
import 'package:freefentasy/untils/appstring.dart';
import 'package:freefentasy/view/createteam.dart';
import 'package:freefentasy/view/mycontest_winning_leaderboard.dart';
import 'package:freefentasy/widget/custom_container.dart';
import 'package:freefentasy/widget/custom_style.dart';
import 'package:freefentasy/widget/customappbar.dart';
import 'package:freefentasy/widget/image_custom.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widget/cotainer_fix.dart';

class ContestsScreen extends StatefulWidget {
  @override
  State<ContestsScreen> createState() => _ContestsScreenState();
}

class _ContestsScreenState extends State<ContestsScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(5.h),
        child: _appbar(),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              TabBar(
                indicatorColor: Color(0XFFAB110E),
                controller: _tabController,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    child: CustomTextStyle(
                      color: Colors.black,
                      title: "Contest",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Tab(
                    child: CustomTextStyle(
                      color: Colors.black,
                      title: "my contest",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Tab(
                    child: CustomTextStyle(
                      color: Colors.black,
                      title: "my teams",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Column(
                        children: [
                          ListTile(
                            title:
                                Text(AppString.header, style: AppStyle.header),
                            subtitle: Text(AppString.headers,
                                style: AppStyle.headers),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ),
                          SizedBox(
                            child: ListView.builder(
                              itemCount: 2,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return _Contests();
                              },
                            ),
                          ),
                          ListTile(
                            title: Text(AppString.subheader,
                                style: AppStyle.header),
                            subtitle: Text(AppString.subheaders,
                                style: AppStyle.headers),
                          ),
                          Container(
                            height: 18.5.h,
                            margin: EdgeInsets.symmetric(vertical: 2.w),
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 3),
                                    color: Colors.black12,
                                    blurRadius: 2,
                                    spreadRadius: 0),
                              ],
                              color: const Color(0xffF6F6F6),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 15.3.h,
                                  decoration: const BoxDecoration(
                                    color: AppColors.whitecolor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                      top: 20,
                                      bottom: 10,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            CustomTextStyle(
                                              title: AppString.prizepool,
                                              fontSize: 12,
                                              color: AppColors.grey,
                                            ),
                                            Spacer(),
                                            CustomTextStyle(
                                              color: AppColors.grey,
                                              fontSize: 12,
                                              title: AppString.entry,
                                            ),
                                          ],
                                        ),
                                        7.heightBox,
                                        Row(
                                          children: [
                                            Text(
                                              AppString.prize,
                                              style: AppStyle.prizetext,
                                            ),
                                            const Icon(
                                              Icons.stars,
                                              color: Colors.yellow,
                                              size: 15,
                                            ),
                                            const Spacer(),
                                            Container(
                                              height: 25,
                                              width: 63,
                                              decoration: BoxDecoration(
                                                color: AppColors.appbar,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  CustomTextStyle(
                                                    title: AppString.coinprize,
                                                    color: AppColors.whitecolor,
                                                    fontSize: 12,
                                                  ),
                                                  const Icon(
                                                    Icons.stars,
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        20.heightBox,
                                        Container(
                                          child: const LinearProgressIndicator(
                                            value: 0.7,
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                    Colors.orange),
                                          ),
                                        ),
                                        7.heightBox,
                                        Row(
                                          children: [
                                            CustomTextStyle(
                                              title: AppString.sport,
                                              fontSize: 12,
                                              color: const Color(0xffab110e),
                                            ),
                                            Spacer(),
                                            CustomTextStyle(
                                              color: AppColors.grey,
                                              fontSize: 12,
                                              title: AppString.sports,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.star_border,
                                      color: AppColors.grey,
                                      size: 20,
                                    ),
                                    CustomTextStyle(
                                      title: AppString.prise,
                                      fontSize: 15,
                                    ),
                                    const Icon(
                                      Icons.stars,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    20.widthBox,
                                    Image.asset(
                                      'assets/img/trophi.png',
                                      height: 2.h,
                                    ),
                                    5.widthBox,
                                    CustomTextStyle(
                                      title: AppString.person,
                                    ),
                                    20.widthBox,
                                    const Icon(
                                      Icons.verified_outlined,
                                      size: 15,
                                      color: AppColors.grey,
                                    ),
                                    10.widthBox,
                                    CustomTextStyle(
                                      title: AppString.upto,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: ListView.builder(
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    Get.to(
                                      ContestWinning(),
                                    );
                                  },
                                  child: _mycontest(),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: ListView.builder(
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return _myteams();
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
            ],
          ),
          Positioned(
            bottom: 3.h,
            left: 25.w,
            right: 25.w,
            child: InkWell(
              onTap: () {
                Get.to(
                  const CreateTeam(),
                );
              },
              child: CustomContainer(
                height: 6.h,
                width: 50.w,
                alignment: Alignment.center,
                color: AppColors.whitecolor,
                border: Border.all(color: Colors.black),
                child: const Text(
                  "CREATE TEAM",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _appbar() {
    return CustomcontestsAppbar(
      leading: AppIcons.back,
      title: AppString.appbtitle,
      firsttitle: AppString.appbfirsttitle,
      secondtitle: AppString.appbsecondtitle,
      subtitle: AppString.appbarsubtitler,
    );
  }

  Widget _Contests() {
    return Container(
      height: 18.5.h,
      margin: EdgeInsets.symmetric(vertical: 2.w),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              offset: Offset(0, 3),
              color: Colors.black12,
              blurRadius: 2,
              spreadRadius: 0),
        ],
        color: const Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 15.3.h,
            decoration: const BoxDecoration(
              color: AppColors.whitecolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                right: 10,
                left: 10,
                top: 20,
                bottom: 10,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomTextStyle(
                        title: AppString.prizepool,
                        fontSize: 12,
                        color: AppColors.grey,
                      ),
                      Spacer(),
                      CustomTextStyle(
                        color: AppColors.grey,
                        fontSize: 12,
                        title: AppString.entry,
                      ),
                    ],
                  ),
                  7.heightBox,
                  Row(
                    children: [
                      Text(
                        AppString.prize,
                        style: AppStyle.prizetext,
                      ),
                      const Icon(
                        Icons.stars,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      const Spacer(),
                      Container(
                        height: 25,
                        width: 63,
                        decoration: BoxDecoration(
                          color: AppColors.appbar,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomTextStyle(
                              title: AppString.coinprize,
                              color: AppColors.whitecolor,
                              fontSize: 12,
                            ),
                            const Icon(
                              Icons.stars,
                              color: Colors.yellow,
                              size: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  Container(
                    child: const LinearProgressIndicator(
                      value: 0.7,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                    ),
                  ),
                  7.heightBox,
                  Row(
                    children: [
                      CustomTextStyle(
                        title: AppString.sport,
                        fontSize: 12,
                        color: const Color(0xffab110e),
                      ),
                      Spacer(),
                      CustomTextStyle(
                        color: AppColors.grey,
                        fontSize: 12,
                        title: AppString.sports,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.star_border,
                color: AppColors.grey,
                size: 20,
              ),
              CustomTextStyle(
                title: AppString.prise,
                fontSize: 15,
              ),
              const Icon(
                Icons.stars,
                color: Colors.yellow,
                size: 12,
              ),
              20.widthBox,
              Image.asset(
                'assets/img/trophi.png',
                height: 2.h,
              ),
              5.widthBox,
              CustomTextStyle(
                title: AppString.person,
              ),
              20.widthBox,
              const Icon(
                Icons.verified_outlined,
                size: 15,
                color: AppColors.grey,
              ),
              10.widthBox,
              CustomTextStyle(
                title: AppString.upto,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _mycontest() {
    return Container(
      height: 12.9.h,
      margin: EdgeInsets.symmetric(vertical: 2.w),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              offset: Offset(0, 3),
              color: Colors.black12,
              blurRadius: 2,
              spreadRadius: 0),
        ],
        color: const Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 9.3.h,
            decoration: const BoxDecoration(
              color: AppColors.whitecolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                right: 10,
                left: 10,
                top: 20,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextStyle(
                    title: AppString.prizepool,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  7.heightBox,
                  Container(
                    child: const LinearProgressIndicator(
                      value: 0.7,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                    ),
                  ),
                  Row(
                    children: [
                      CustomTextStyle(
                        title: AppString.sport,
                        fontSize: 12,
                        color: const Color(0xffab110e),
                      ),
                      Spacer(),
                      CustomTextStyle(
                        color: AppColors.grey,
                        fontSize: 12,
                        title: AppString.sports,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.star_border,
                color: AppColors.grey,
                size: 20,
              ),
              CustomTextStyle(
                title: AppString.prise,
                fontSize: 15,
              ),
              const Icon(
                Icons.stars,
                color: Colors.yellow,
                size: 12,
              ),
              20.widthBox,
              Image.asset(
                'assets/img/trophi.png',
                height: 2.h,
              ),
              5.widthBox,
              CustomTextStyle(
                title: AppString.person,
              ),
              20.widthBox,
              const Icon(
                Icons.verified_outlined,
                size: 15,
                color: AppColors.grey,
              ),
              10.widthBox,
              CustomTextStyle(
                title: AppString.upto,
              ),
            ],
          ).p4(),
        ],
      ),
    );
  }

  Widget _myteams() {
    return Container(
      height: 20.h,
      margin: EdgeInsets.symmetric(vertical: 2.5.w),
      decoration: BoxDecoration(
        color: AppColors.whitecolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 17.h,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: AppColors.firstmyteam.withOpacity(0.6),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: const [
                        Text(
                          "HQ CHEETAH (T1)",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(Icons.delete, color: Colors.white),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            "AMD",
                            style: TextStyle(color: AppColors.whitecolor),
                          ),
                          Text(
                            "7",
                            style: TextStyle(color: AppColors.whitecolor),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            "DBM",
                            style: TextStyle(color: AppColors.whitecolor),
                          ),
                          Text(
                            "8",
                            style: TextStyle(color: AppColors.whitecolor),
                          ),
                        ],
                      ),
                      CustomImahe(
                        data: 'S.Raheman',
                        title: 'C',
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                        colors: Colors.black,
                      ),
                      CustomImahe(
                        data: ' V.khohli',
                        title: 'VC',
                        fontSize: 10,
                        border: Border.all(color: Colors.black),
                        color: Colors.black,
                        colors: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("WK 1"),
              Text("BAT 4"),
              Text("AR 2"),
              Text("BOWL 3"),
            ],
          ).p4(),
        ],
      ),
    );
  }
}
