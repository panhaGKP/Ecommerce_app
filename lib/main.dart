import 'package:ecommerce_app/Group%20Project/Detail/detail_screen.dart';
import 'package:ecommerce_app/Group%20Project/OTP_Screen/otp.dart';
import 'package:ecommerce_app/Group%20Project/SignUp/SignUp.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/models/Product.dart';
import 'package:flutter/material.dart';
import 'basic_module/basic_page.dart';
import 'package:ecommerce_app/route.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'cart/cart_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        textTheme: const TextTheme(
            bodyText1: TextStyle(color: kTextColor),
            bodyText2: TextStyle(color: kTextColor)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
      // home: SplashScreen(),
    );
  }
}
