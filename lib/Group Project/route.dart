import 'package:flutter/widgets.dart';
import 'package:ecommerce_app/Group%20Project/Detail/detail_screen.dart';
import 'package:ecommerce_app/Group%20Project/OTP_Screen/otp.dart';
import 'SignUp/SignUp.dart';
import 'SignUp/Complete_SignUp.dart';
import 'Home/home_screen.dart';
import 'Detail/detail_screen.dart';

final Map<String, WidgetBuilder> route = {
  SignUpScreen.routeName: (context) => SignUpScreen(),

  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ComSignUp.routeName: (context) => ComSignUp(),
  //DetailScreen.routeName: (context) => DetailScreen(),
};
