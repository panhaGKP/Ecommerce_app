import 'package:flutter/material.dart';
import 'package:ecommerce_app/Group%20Project/SignUp/body.dart';

class SignUpScreen extends StatelessWidget {
  static var routeName;

  //static String routeName = "SignUp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color.fromARGB(255, 243, 232, 200),
        title: Text(
          'Sign Up',
        ),
      ),
      body: Body(),
    );
  }
}
