import 'package:ecommerce_app/screens/Sign_in/Components/body.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';
import 'body.dart';

class forgetpasswordscreen extends StatelessWidget {
  static String routeName = "/forgot_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100,
        title: Text("Forgot Password",
        style: TextStyle(
          color: kPrimaryColor,
        ),
        ),
      ),
      body: Body(),
    );
  }
}