import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/Group%20Project/OTP_Screen/body_otp_screen.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "SignUp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text(
          "OTP Verification",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BodyOTP(),
    );
  }
}
