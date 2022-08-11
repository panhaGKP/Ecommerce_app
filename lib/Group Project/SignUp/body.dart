import 'package:ecommerce_app/Group%20Project/SignUp/socal_card.dart';
import 'package:ecommerce_app/Group%20Project/contstants.dart';
import 'package:ecommerce_app/Group%20Project/theme.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Complete_SignUp.dart';
import 'components/custom_suffix_icon.dart';
import 'components/form_error.dart';
import 'components/sign_up_form.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
                  "Register Account",
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
                SignUpForm(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign In',
                        style: TextStyle(fontSize: 16, color: kPrimaryColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
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
