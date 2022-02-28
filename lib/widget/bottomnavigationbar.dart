import 'package:flutter/material.dart';
import 'package:freefentasy/view/coine_screen.dart';
import 'package:freefentasy/view/main%20_screen.dart';
import 'package:freefentasy/view/matches_screen.dart';
import 'package:freefentasy/view/setting_screen.dart';
import 'package:freefentasy/view/winner_screen.dart';
import 'package:sizer/sizer.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var isloding = 0;

  final page = [
    MainScreen(),
    MatchsScreen(),
    WinenerScreen(),
    CoineScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[isloding],
      bottomNavigationBar: Container(
        height: 12.3.h,
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: isloding,
          unselectedItemColor: Colors.black,
          // onTap: (index) {
          //   setState(() {
          //     isloding = index;
          //   });
          // },
          selectedItemColor: Color(0xffAB110E),
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    isloding = 0;
                  });
                },
                icon: Image.asset(
                  "assets/img/h.png",
                  color: isloding == 0 ? Color(0xffAB110E) : Colors.black,
                  height: 5.w,
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    isloding = 1;
                  });
                },
                icon: Image.asset(
                  "assets/img/trophi.png",
                  color: isloding == 1 ? Color(0xffAB110E) : Colors.black,
                  height: 5.w,
                ),
              ),
              label: "Matches",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    isloding = 2;
                  });
                },
                icon: Image.asset(
                  "assets/img/w.png",
                  color: isloding == 2 ? Color(0xffAB110E) : Colors.black,
                  height: 5.w,
                ),
              ),
              label: "Winners",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    isloding = 3;
                  });
                },
                icon: Image.asset(
                  "assets/img/C.png",
                  color: isloding == 3 ? Color(0xffAB110E) : Colors.black,
                  height: 5.w,
                ),
              ),
              label: "Coins",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    isloding = 4;
                  });
                },
                icon: Image.asset(
                  "assets/img/seting.png",
                  color: isloding == 4 ? Color(0xffAB110E) : Colors.black,
                  height: 5.w,
                ),
              ),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
