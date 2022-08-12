import 'package:flutter/material.dart';

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15),
  enabledBorder: OutlineInputBorder(),
  focusedBorder: OutlineInputBorder(),
  border: OutlineInputBorder(),
);

OutlineInputBorder outlineInputBorder(borderRaduis) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: Colors.red),
  );
}

// //Form error
// final RegExp emailValidatorRegExp = RegExp(
//     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
// const String kEmailNullError = "Please enter your email";
// const String kInvalidEmailError = "Please enter valid email";
// const String kPassNullError = "Please enter your pasword";
// const String kShortPassErrror = "Password is too short";
// const String kMatchPassError = "Passwrid don't match";
