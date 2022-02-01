import 'package:flutter/material.dart';
import 'package:freefentasy/screen/setnewpassword.dart';
import 'package:freefentasy/widget/custom_iconbutton.dart';
import 'package:freefentasy/widget/custom_style.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';
import 'package:timer_count_down/timer_count_down.dart';

class OtpScreen extends StatefulWidget {
  final String number;
  const OtpScreen({Key? key, required this.number}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 12, left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _backicon(),
                SizedBox(
                  height: 5.h,
                ),
                _headertext(),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: _text(),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: OTPTextField(
                      controller: otpController,
                      length: 6,
                      width: 80.w,
                      fieldWidth: 40,
                      fieldStyle: FieldStyle.underline,
                      style: TextStyle(fontSize: 17),
                      onChanged: (pin) {
                        print("Changed: " + pin);
                      },
                      onCompleted: (pin) {
                        print("Completed: " + pin);
                        Get.to(
                          const SetNewpassword(),
                        );
                      }),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Center(
                  child: Text("Did't receive the otp?"),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Center(
                  child: _resendotp(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _backicon() {
    return CustomIconButton(
      color: Colors.black,
      icon: Icons.arrow_back,
      onPressed: () {
        Get.back();
      },
    );
  }

  Widget _headertext() {
    return Center(
      child: CustomTextStyle(
        title: "OTP Verification",
        fontSize: 30.sp,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _text() {
    return CustomTextStyle(
      title: 'Enter to OTP Send to ${widget.number}',
      fontSize: 15,
      fontWeight: FontWeight.w500,
    );
  }

  Widget _resendotp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextStyle(
          title: 'RESENF OTP IN  ',
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        Countdown(
          seconds: 20,
          build: (BuildContext context, double time) => Text(time.toString()),
          interval: Duration(milliseconds: 100),
          onFinished: () {
            print('Timer is done!');
          },
        ),
      ],
    );
  }
}
