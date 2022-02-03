import 'package:flutter/material.dart';
import 'package:freefentasy/widget/custom_container.dart';
import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:freefentasy/widget/custom_style.dart';
import 'package:freefentasy/widget/customappbar.dart';
import 'package:sizer/sizer.dart';

class CoineScreen extends StatefulWidget {
  const CoineScreen({Key? key}) : super(key: key);

  @override
  _CoineScreenState createState() => _CoineScreenState();
}

class _CoineScreenState extends State<CoineScreen> {
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
          Center(
            child: Column(
              children: [
                CustomContainer(
                  height: 11.h,
                  width: 21.w,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img/coins.png"),
                  ),
                ),
                CustomTextStyle(
                  title: 'TOTAL BALANCE',
                  letterSpacing: 2,
                ),
                CustomTextStyle(
                  title: '83,000',
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          _depositamount(),
          SizedBox(
            height: 1.h,
          ),
          _winingamount(),
          SizedBox(
            height: 2.h,
          ),
          _container(),
        ],
      ),
    );
  }

  Widget _depositamount() {
    return CustomContainer(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 7.h,
      color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomContainer(
              height: 6.h,
              width: 10.w,
              color: const Color(0xffF6F6F6),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/img/coi.png",
                ),
              ),
            ),
          ),
          CustomTextStyle(
            title: "Deposit Amount",
            fontWeight: FontWeight.w500,
            // fontSize: 12.sp,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextStyle(
                  title: "Total",
                  color: Colors.black38,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.stars,
                      size: 15,
                      color: Color(0xffF08906),
                    ),
                    CustomTextStyle(
                      title: "80,000",
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _winingamount() {
    return CustomContainer(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 7.h,
      color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomContainer(
              height: 6.h,
              width: 10.w,
              color: const Color(0xffF6F6F6),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/img/co.png",
                ),
              ),
            ),
          ),
          CustomTextStyle(
            title: "Wining Amount",
            fontWeight: FontWeight.w500,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextStyle(
                  title: "Total",
                  color: Colors.black38,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.stars,
                      size: 15,
                      color: Color(0xffF08906),
                    ),
                    CustomTextStyle(
                      title: "3,000",
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _container() {
    return CustomContainer(
      height: 40.h,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainer(
                  height: 5.h,
                  width: 12.w,
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff2C47D4),
                      Color(0xff30A8EC),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(
                      "assets/img/n.png",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextStyle(
                        title: "Transaction History",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      CustomTextStyle(
                        title: "cheak your daily transction details",
                        fontSize: 12,
                        color: Colors.black38,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomIconButton(
                  onPressed: () {},
                  icon: Icons.arrow_forward_ios,
                  iconSize: 15,
                ),
              ],
            ),
          );
        },
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 0,
          );
        },
      ),
    );
  }
}
