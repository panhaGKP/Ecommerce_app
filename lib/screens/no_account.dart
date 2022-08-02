import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/forgetpassword/forgetpassword_screen.dart';
import 'package:ecommerce_app/size_config.dart';
class noAcc extends StatelessWidget {
  const noAcc({
    Key? key,
  }) : super(key: key);
  
  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?",
          style: TextStyle(
            fontSize: SizeConfig().getProportionateScreenWidth(15),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.popAndPushNamed(
            context, forgetpasswordscreen.routeName),
          child: Text("  Sign Up",
            style: TextStyle(
              fontSize: SizeConfig().getProportionateScreenWidth(20),
              color: Color(0xFFFF7643),
            ),
          ),
        )
      ],
    );
  }
}

