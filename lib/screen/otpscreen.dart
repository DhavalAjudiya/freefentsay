import 'package:flutter/material.dart';
import 'package:freefentasy/screen/setnewpassword.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  final int number;
  const OtpScreen({Key? key, required this.number}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 12, left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "OTP Verification",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 150),
                Center(
                  child: Text(
                    "Enter to OTP Send to ${widget.number}",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: OTPTextField(
                      controller: otpController,
                      length: 6,
                      width: size.width * 0.9,
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
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text("Did't receive the otp?"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "RESEND OTP IN 00:60 ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
