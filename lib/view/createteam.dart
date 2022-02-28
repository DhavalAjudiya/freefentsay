import 'package:flutter/material.dart';
import 'package:freefentasy/theam/app_color.dart';
import 'package:freefentasy/theam/appstyle.dart';
import 'package:freefentasy/untils/appstring.dart';
import 'package:freefentasy/widget/colum.dart';
import 'package:freefentasy/widget/const.dart';
import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:freefentasy/widget/image_custom.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateTeam extends StatefulWidget {
  const CreateTeam({Key? key}) : super(key: key);

  @override
  _CreateTeamState createState() => _CreateTeamState();
}

class _CreateTeamState extends State<CreateTeam>
    with SingleTickerProviderStateMixin {
  Const _const = Const();
  int counter = 0;
  bool? isdisebalbutton;
  int select = 0;
  bool isselected = false;
  TabController? _tabController;
  @override
  void initState() {
    isdisebalbutton = false;
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            Container(
              height: 23.8.h,
              color: AppColors.appbar,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.zero,
                        child: IconButton(
                          visualDensity: VisualDensity.compact,
                          icon: const Icon(
                            Icons.arrow_back,
                            color: AppColors.whitecolor,
                          ),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                      ),
                      Text(
                        AppString.appheader,
                        style: AppStyle.appheader,
                      ),
                      const Icon(Icons.announcement_outlined,
                          color: AppColors.whitecolor),
                    ],
                  ).p12(),
                  Text(
                    AppString.appheadertext,
                    style: AppStyle.bottun,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomColumn(
                        text: AppString.player,
                        style: AppStyle.appheaders,
                        subtext: "$counter/11",
                        textstyle: AppStyle.appheader,
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage("assets/img/ind.png"),
                          ),
                          CustomColumn(
                            text: AppString.ind,
                            style: AppStyle.appheaders,
                            subtext: AppString.indplayer,
                            textstyle: AppStyle.appheader,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomColumn(
                            text: AppString.ENG,
                            style: AppStyle.appheaders,
                            subtext: AppString.endplayer,
                            textstyle: AppStyle.appheader,
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage("assets/img/eng.png"),
                          ),
                        ],
                      ),
                      CustomColumn(
                        text: AppString.credits,
                        style: AppStyle.appheaders,
                        subtext: AppString.creditspoint,
                        textstyle: AppStyle.appheader,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 2.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 11,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 0.3.w),
                                height: 2.h,
                                width: 8.w,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ).p8(),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: TabBar(
                unselectedLabelColor: Colors.black38,
                onTap: (int) {
                  setState(() {
                    select = int;
                  });
                },
                indicatorColor: Color(0XFFAB110E),
                controller: _tabController,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text(
                      "WK(0)",
                      style: TextStyle(
                        color: select == 0 ? Colors.black : Colors.black38,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "BAT(0)",
                      style: TextStyle(
                        color: select == 1 ? Colors.black : Colors.black38,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "AR(0)",
                      style: TextStyle(
                        color: select == 2 ? Colors.black : Colors.black38,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "BOWL(0)",
                      style: TextStyle(
                        color: select == 3 ? Colors.black : Colors.black38,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              AppString.selectPlayer,
              style: AppStyle.prizetext,
            ).p8(),
            Container(
              color: Color(0xffAB110E).withOpacity(0.08),
              child: Row(
                children: [
                  const Text(
                    "Select by",
                  ),
                  SizedBox(
                    width: 27.w,
                  ),
                  Spacer(),
                  Row(
                    children: const [
                      Text("Credits"),
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.red,
                      )
                    ],
                  ),
                ],
              ).p8(),
            ),
            Expanded(
              child: Container(
                color: AppColors.whitecolor,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    SizedBox(
                      child: ListView.separated(
                        itemCount: _const.data.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            color: const Color(0xffFFF8ED),
                            child: Row(
                              children: [
                                ImageCustom(
                                  title: AppString.ror,
                                  data: AppString.inn,
                                ),
                                CustomColumn(
                                    text: _const.data[index]['name'],
                                    subtext: AppString.playing,
                                    textstyle: AppStyle.playing),
                                const Spacer(),
                                Text(
                                  _const.data[index]['point'],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.w),
                                  child: CustomIconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (_const.data[index]['isselected'] =
                                            !_const.data[index]['isselected']) {
                                          setState(() {
                                            if (counter <= 10) {
                                              counter++;
                                            }
                                          });
                                        } else {
                                          setState(() {
                                            if (counter >= 1) {
                                              counter--;
                                            }
                                          });
                                        }
                                      });
                                    },
                                    icon: _const.data[index]['isselected']
                                        ? _const.data[index]["icons"]
                                        : _const.data[index]["icon"],
                                    color: _const.data[index]['isselected']
                                        ? _const.data[index]["colors"]
                                        : _const.data[index]["color"],
                                  ),
                                ),
                              ],
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
                    Expanded(
                      child: SizedBox(
                        child: ListView.separated(
                          itemCount: _const.bat.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              color: Color(0xffFFF8ED),
                              child: Row(
                                children: [
                                  ImageCustom(
                                    title: AppString.ror,
                                    data: AppString.inn,
                                  ),
                                  CustomColumn(
                                      text: _const.bat[index]['name'],
                                      subtext: AppString.playing,
                                      textstyle: AppStyle.playing),
                                  const Spacer(),
                                  Text(
                                    _const.bat[index]['point'],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3.w),
                                    child: CustomIconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (_const.bat[index]['isselected'] =
                                              !_const.bat[index]
                                                  ['isselected']) {
                                            setState(() {
                                              if (counter <= 10) {
                                                counter++;
                                              }
                                            });
                                          } else {
                                            setState(() {
                                              if (counter >= 1) {
                                                counter--;
                                              }
                                            });
                                          }
                                        });
                                      },
                                      icon: _const.bat[index]['isselected']
                                          ? _const.bat[index]["icons"]
                                          : _const.bat[index]["icon"],
                                      color: _const.bat[index]['isselected']
                                          ? _const.bat[index]["colors"]
                                          : _const.bat[index]["color"],
                                    ),
                                  ),
                                ],
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
                    ),
                    Expanded(
                      child: SizedBox(
                        child: ListView.separated(
                          itemCount: _const.ar.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              color: Color(0xffFFF8ED),
                              child: Row(
                                children: [
                                  ImageCustom(
                                    title: AppString.ror,
                                    data: AppString.inn,
                                  ),
                                  CustomColumn(
                                      text: _const.ar[index]["name"],
                                      subtext: AppString.playing,
                                      textstyle: AppStyle.playing),
                                  const Spacer(),
                                  Text(
                                    _const.ar[index]["point"],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3.w),
                                    child: CustomIconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (_const.ar[index]['isselected'] =
                                              !_const.ar[index]['isselected']) {
                                            setState(() {
                                              if (counter <= 10) {
                                                counter++;
                                              }
                                            });
                                          } else {
                                            setState(() {
                                              if (counter >= 1) {
                                                counter--;
                                              }
                                            });
                                          }
                                        });
                                      },
                                      icon: _const.ar[index]['isselected']
                                          ? _const.ar[index]["icons"]
                                          : _const.ar[index]["icon"],
                                      color: _const.ar[index]['isselected']
                                          ? _const.ar[index]["colors"]
                                          : _const.ar[index]["color"],
                                    ),
                                  ),
                                ],
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
                    ),
                    Expanded(
                      child: SizedBox(
                        child: ListView.builder(
                          itemCount: _const.bowl.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              color: Color(0xffFFF8ED),
                              child: Row(
                                children: [
                                  ImageCustom(
                                    title: AppString.ror,
                                    data: AppString.inn,
                                  ),
                                  CustomColumn(
                                      text: _const.bowl[index]["name"],
                                      subtext: AppString.playing,
                                      textstyle: AppStyle.playing),
                                  const Spacer(),
                                  Text(
                                    _const.bowl[index]["point"],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3.w),
                                    child: CustomIconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (_const.bowl[index]['isselected'] =
                                              !_const.bowl[index]
                                                  ['isselected']) {
                                            setState(() {
                                              if (counter <= 10) {
                                                counter++;
                                              }
                                            });
                                          } else {
                                            setState(() {
                                              if (counter >= 1) {
                                                counter--;
                                              }
                                            });
                                          }
                                        });
                                      },
                                      icon: _const.bowl[index]['isselected']
                                          ? _const.bowl[index]["icons"]
                                          : _const.bowl[index]["icon"],
                                      color: _const.bowl[index]['isselected']
                                          ? _const.bowl[index]["colors"]
                                          : _const.bowl[index]["color"],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
