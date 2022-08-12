import 'package:flutter/material.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/screens/Sign_in/sign_in.dart';

class body extends StatefulWidget {
  const body({Key? key}) : super(key: key);

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
              children: <Widget>[
                Text('TOKOTO',
                style: TextStyle(
                  fontSize: SizeConfig().getProportionateScreenWidth(36),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
                ),
                const Text('welcome to our store'),
                Spacer(),
                Image.asset("assets/images/splash_1.png",
                height: SizeConfig().getProportionateScreenHeight(256),
                width: SizeConfig().getProportionateScreenWidth(235),
                ),
              ],
             )
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
              ),
            Expanded(
              child: Column(
              children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.only(left: 50, right:50),
                    primary: Color.fromARGB(255, 2, 2, 2),
                    backgroundColor: Color.fromARGB(255, 72, 207, 117), // Background Color
                ),
                  onPressed: () { 
                    Navigator.pushNamed(context, SigninScreen.routeName);
                  },
                  child: Text('CONTINUE'),
                )
            ],
              ),
            )
          ],
          
        ),
      ),
    );
  }
}