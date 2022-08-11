import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGrandientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);
//final form

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter your valid email";
const String kPassNullError = "Please enter your password";
const String kConPassNullError = "Please enter your confirm password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Confirm Password don't match";
const String kNameNullError = "please enter your name";
const String kPhoneNumNullError = "please enter your phone number";
const String kaddressNullError = "please enter your address";
