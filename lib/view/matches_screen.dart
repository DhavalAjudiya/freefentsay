import 'package:flutter/material.dart';
import 'package:freefentasy/widget/cotainer_fix.dart';
import 'package:freefentasy/widget/custom_style.dart';
import 'package:freefentasy/widget/customappbar.dart';

class MatchsScreen extends StatefulWidget {
  const MatchsScreen({Key? key}) : super(key: key);

  @override
  _MatchsScreenState createState() => _MatchsScreenState();
}

class _MatchsScreenState extends State<MatchsScreen>
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
      backgroundColor: Color(0xffE5E5E5),
      appBar: const PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: CustomFixAppbar(
          data: 'My Matches',
          automaticallyImplyLeading: false,
        ),
      ),
      body: Column(
        children: [
          TabBar(
            indicatorColor: Color(0XFFAB110E),
            controller: _tabController,
            labelColor: Colors.white,
            tabs: [
              Tab(
                child: CustomTextStyle(
                  color: Colors.black,
                  title: "Live",
                  fontWeight: FontWeight.w500,
                ),
              ),
              Tab(
                child: CustomTextStyle(
                  color: Colors.black,
                  title: "Upcoming",
                  fontWeight: FontWeight.w500,
                ),
              ),
              Tab(
                child: CustomTextStyle(
                  color: Colors.black,
                  title: "Complete",
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
                SizedBox(
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return _live();
                    },
                  ),
                ),
                SizedBox(
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return _upcoming();
                    },
                  ),
                ),
                SizedBox(
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return _complete();
                    },
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget _live() {
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

  Widget _upcoming() {
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

  Widget _complete() {
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
}
