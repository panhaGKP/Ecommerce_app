import 'package:ecommerce_app/size_config.dart';
import 'package:ecommerce_app/screens/no_account.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/constant.dart';

import 'sign_form.dart';
import 'socialmedia.dart';
class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig().getProportionateScreenWidth(40),
          vertical: SizeConfig().getProportionateScreenHeight(10)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text("Welcome back",
               style: TextStyle(
                      fontSize: SizeConfig().getProportionateScreenWidth(28),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig().getProportionateScreenWidth(40),
                  vertical: SizeConfig().getProportionateScreenHeight(10)),
                  child: Text("Sign in with your password or you can continue with your social media",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: SizeConfig().getProportionateScreenWidth(15),
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),
                SignForm(),
                socialmedia(),  
                noAcc(),
            ]),
          ),
        ),
      ),
    );
  }
}

