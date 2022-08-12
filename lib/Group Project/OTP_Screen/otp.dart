import 'package:flutter/material.dart';
import 'package:ecommerce_app/Group%20Project/OTP_Screen/body_otp_screen.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "SignUp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //backgroundColor: Colors.black,
          // title: Text(
          //   "OTP Verification",
          //   style: TextStyle(color: Color.fromARGB(255, 132, 131, 126)),
          // ),
          ),
      body: BodyOTP(),
    );
  }
}
