import 'package:flutter/material.dart';
import 'Components/body.dart';
class SigninScreen extends StatelessWidget {
  static String  routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.amber.shade100,
        title: Text('SIGN IN',
        style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body: body(),
    );
  }
}