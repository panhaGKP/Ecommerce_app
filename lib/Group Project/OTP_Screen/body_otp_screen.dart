import 'package:flutter/material.dart';
import 'package:ecommerce_app/Group%20Project/contstants.dart';

import 'otp_form.dart';

class BodyOTP extends StatelessWidget {
  const BodyOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              Text(
                "OTP Verification",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text("We sent your code to +855 ** *** ***"),

              buildTimer(),

              SizedBox(
                height: 50,
              ),
              OtpForm(),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  //reset OTP code
                },
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text("00:$value",
              style: TextStyle(color: Color.fromARGB(255, 18, 61, 20))),
          onEnd: () {},
        )
      ],
    );
  }
}
