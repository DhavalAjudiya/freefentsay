import 'package:flutter/material.dart';
import 'package:freefentasy/theam/app_color.dart';
import 'package:freefentasy/theam/appicon.dart';
import 'package:freefentasy/theam/appstyle.dart';
import 'package:freefentasy/untils/appstring.dart';
import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:freefentasy/widget/custom_style.dart';
import 'package:freefentasy/widget/customappbar.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ContestWinning extends StatefulWidget {
  @override
  State<ContestWinning> createState() => _ContestWinningState();
}

class _ContestWinningState extends State<ContestWinning>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(5.2.h),
        child: _appber(context),
      ),
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          _container(),
          _row(),
          10.heightBox,
          _tabbar(),
        ],
      ),
    );
  }

  Widget _appber(context) {
    return CustomcontestsAppbar(
      leading: AppIcons.back,
      title: AppString.atitle,
      firsttitle: AppString.afirsttitle,
      secondtitle: AppString.asecondtitle,
      subtitle: AppString.asubtitler,
    );
  }

  Widget _container() {
    return Container(
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
    );
  }

  Widget _tabbar() {
    return Expanded(
      child: Container(
        color: AppColors.whitecolor,
        child: Column(
          children: [
            TabBar(
              // unselectedLabelColor: AppColor.white,
              controller: _tabController,
              tabs: [
                Tab(
                  child: Text(
                    AppString.winning,
                    style: AppStyle.headers,
                  ),
                ),
                Tab(
                  child: Text(
                    AppString.leaderboard,
                    style: AppStyle.headers,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Row(
                children: [
                  const Text(AppString.HEADER),
                  const Spacer(),
                  CustomIconButton(
                    onPressed: () {},
                    icon: Icons.vertical_align_bottom,
                    iconSize: 20,
                  ),
                ],
              ),
            ),
            const Divider(height: 0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
              child: Row(
                children: const [
                  Text(AppString.rank),
                  Spacer(),
                  Text(AppString.winning),
                ],
              ),
            ),
            const Divider(height: 0),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: const [
                                Text("#1"),
                                Spacer(),
                                Text("50000"),
                                Icon(
                                  Icons.stars,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const Divider(height: 0),
                    ),
                  ),
                  SizedBox(
                    child: ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/img/profile.jpeg"),
                                  radius: 23,
                                ),
                                20.widthBox,
                                const Text("Rahul Gandhi"),
                                20.widthBox,
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: const Center(
                                    child: Text("T1"),
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.background,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                const Spacer(),
                                CustomIconButton(
                                  onPressed: () {},
                                  icon: Icons.mode_edit_outline,
                                  color: Colors.grey,
                                  iconSize: 17,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider(
                          height: 0,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _row() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.5.w, vertical: 1.w),
      child: Row(
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
    );
  }
}
