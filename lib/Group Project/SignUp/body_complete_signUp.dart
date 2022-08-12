import 'package:ecommerce_app/Group%20Project/SignUp/socal_card.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';
import '../OTP_Screen/otp.dart';
import 'components/com_sign_up_form.dart';
import 'components/sign_up_form.dart';

class CompleteBody extends StatefulWidget {
  const CompleteBody({Key? key}) : super(key: key);

  @override
  State<CompleteBody> createState() => _CompleteBodyState();
}

class _CompleteBodyState extends State<CompleteBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  "Complete Profile",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Complete Your details information of continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 60,
                ),
                ComSignUpForm(),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "by continuing your confirm that your agree \nwith our Term and Condition",
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
