import 'package:flutter/material.dart';
import 'package:freefentasy/widget/cotainer_fix.dart';

import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:freefentasy/widget/custom_style.dart';
import 'package:freefentasy/widget/customappbar.dart';
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
            onPressed: () {},
          ),
        ),
      ),
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                _container(),
                Positioned(
                  top: 4.h,
                  left: 3.w,
                  right: 3.w,
                  child: _Container(),
                ),
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 4,
              ),
              height: 7.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/img/ad.png"),
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            _text(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 45.9.h,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return _listviewContainer();
                },
              ),
            ),
          ],
        ),
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
    return CustomContainer(
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
    return CustomContainer(
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
