import 'package:flutter/material.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:ecommerce_app/constant.dart';
import 'body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/spllash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100,
        title: Text("TOKOTO",
        style: TextStyle(
          color: kPrimaryColor,
          fontSize: SizeConfig().getProportionateScreenWidth(38),
          fontWeight: FontWeight.normal,
        ),),
       ),
       body: body(),
    );
  }
}