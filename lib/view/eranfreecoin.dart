import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freefentasy/widget/custom_gesturedetector.dart';
import 'package:freefentasy/widget/customappbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Fraind extends StatefulWidget {
  const Fraind({Key? key}) : super(key: key);

  @override
  _FraindState createState() => _FraindState();
}

class _FraindState extends State<Fraind> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: CustomFixAppbar(
          data: "Earn Free Coins",
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 25.h,
            child: Center(
              child: Image.asset("assets/img/emooji.png"),
            ),
          ),
          const Text(
            "Get 1500 Free Coins",
            style: TextStyle(
                color: Color(0XFFAB110E), fontWeight: FontWeight.w500),
          ),
          Text("For Every User You Refer"),
          SizedBox(
            height: 7.h,
          ),
          const Text(
            "Referrel Code",
            style: TextStyle(color: Colors.grey),
          ),
          const Text(
            "ZXVCBHNMJKPYDR",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 4.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: CustomGestureDetector(
                onTap: () {},
                child: Text(
                  "COPY",
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          const Text("Tap to share you referal link and earn"),
          const Text("1500 Coins"),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 0;
                        });
                      },
                      child: Container(
                        width: 45.w,
                        height: 5.h,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 1, right: 8, bottom: 1, left: 22),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/img/tiwwter.png",
                                height: 2.h,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              const Text("Twitter"),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color:
                                  selected == 0 ? Colors.blue : Colors.black45),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 1;
                        });
                      },
                      child: Container(
                        width: 45.w,
                        height: 5.h,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 1, right: 8, bottom: 1, left: 22),
                          child: Row(
                            children: [
                              const Center(
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 13,
                                  backgroundImage:
                                      AssetImage("assets/img/f.png"),
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Center(child: const Text("Facebook")),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color:
                                  selected == 1 ? Colors.blue : Colors.black45),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 2;
                        });
                      },
                      child: Container(
                        width: 45.w,
                        height: 5.h,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 1, right: 8, bottom: 1, left: 22),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 15,
                                backgroundImage:
                                    AssetImage("assets/img/insta.png"),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              const Text("Instagram"),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color:
                                  selected == 2 ? Colors.blue : Colors.black45),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 3;
                        });
                      },
                      child: Container(
                        width: 45.w,
                        height: 5.h,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 1, right: 8, bottom: 1, left: 22),
                          child: Row(
                            children: [
                              Center(
                                child: Image.asset(
                                  "assets/img/whtasapp.png",
                                  height: 2.2.h,
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              const Center(
                                child: Text("Watsapp"),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color:
                                  selected == 3 ? Colors.blue : Colors.black45),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          const Text(
            "Referral Terms & Condition",
            style: TextStyle(
                color: Color(0XFFAB110E),
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ],
      ),
    );
  }
}
