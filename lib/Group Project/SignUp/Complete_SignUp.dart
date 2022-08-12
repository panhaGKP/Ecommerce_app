import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';
//import 'package:newbie/Group%20Project/SignUp/body_complete_signUp.dart';

import 'body_complete_signUp.dart';

class ComSignUp extends StatelessWidget {
  static var routeName;

  // static String routeName = "SignUp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color.fromARGB(255, 201, 200, 200),
        title: const Text('Sign Up'),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: const CompleteBody(),
    );
  }
}
