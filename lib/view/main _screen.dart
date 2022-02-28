import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:freefentasy/view/contantscreen.dart';
import 'package:freefentasy/view/setting_screen.dart';
import 'package:freefentasy/widget/cotainer_fix.dart';

import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:freefentasy/widget/custom_style.dart';
import 'package:freefentasy/widget/customappbar.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: CustomAppbar(
          title: 'Free Fantasy',
          leading: CustomIconButton(
            icon: Icons.person,
            onPressed: () {
              Get.to(
                const SettingScreen(),
              );
            },
          ),
        ),
      ),
      backgroundColor: Color(0xffE5E5E5),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _container(),
              SizedBox(
                height: 5.h,
              ),
              CarouselSlider(
                items: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/ad.png"),
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 80,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                  aspectRatio: 2.2,
                ),
              ),
              _text().p4(),
              Expanded(
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return _listviewContainer();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 4.5.h,
            left: 5.w,
            right: 3.w,
            child: InkWell(
              onTap: () {
                Get.to(
                  ContestsScreen(),
                );
              },
              child: _Container(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _container() {
    return Container(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, bottom: 4),
        child: Row(
          children: [
            CustomTextStyle(
              title: "MyMatches",
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            Spacer(),
            CustomTextStyle(
              title: "View All",
              color: Colors.white,
            ),
            CustomIconButton(
              onPressed: () {},
              icon: Icons.arrow_forward_ios,
              color: Colors.white,
              iconSize: 15,
            ),
          ],
        ),
      ),
      height: 15.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/bg.png"), fit: BoxFit.cover),
      ),
    );
  }

  Widget _Container() {
    return ContainerFixCustom(
      data: "Afghanistan vs Zimbabwe",
      title: "AFG",
      backgroundImage: const AssetImage("assets/img/afg.png"),
      subtitle: "vs",
      backgroundImg: const AssetImage("assets/img/zim.png"),
      secondsubtitle: "ZIM",
      text: "1 Team 1 Contests",
    );
  }

  Widget _text() {
    return CustomTextStyle(
      title: "Upcoming Matches",
      fontWeight: FontWeight.bold,
      fontSize: 17,
    );
  }

  Widget _listviewContainer() {
    return ContainerFixCustom(
      data: "India vs Englend - MCA Stadium",
      title: "IND",
      subtitle: "2H 12 M",
      secondsubtitle: "ENG",
      backgroundImage: const AssetImage("assets/img/ind.png"),
      backgroundImg: const AssetImage("assets/img/eng.png"),
      border: Border.all(color: Colors.green),
      continertitle: "MEGA",
      secondcontinertitle: "5,00,000",
      icon: Icons.stars,
    );
  }
}
