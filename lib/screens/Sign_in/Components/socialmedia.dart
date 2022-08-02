import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/forgetpassword/forgetpassword_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';


class socialmedia extends StatelessWidget {
  const socialmedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(SizeConfig().getProportionateScreenWidth(12)),
          decoration: BoxDecoration(
            color: Color(0XFFF5F6F9),
            shape: BoxShape.circle,
          ),
          child:  SvgPicture.asset("assets/icons/facebook-2.svg"),
        ),
        Container(
          padding: EdgeInsets.all(SizeConfig().getProportionateScreenWidth(12)),
          decoration: BoxDecoration(
            color: Color(0XFFF5F6F9),
            shape: BoxShape.circle,
          ),
          child:  SvgPicture.asset("assets/icons/google-icon.svg"),
        ),
        Container(
          padding: EdgeInsets.all(SizeConfig().getProportionateScreenWidth(12)),
          decoration: BoxDecoration(
            color: Color(0XFFF5F6F9),
            shape: BoxShape.circle,
          ),
          child:  SvgPicture.asset("assets/icons/twitter.svg"),
        ),
        // Container(
        //   child: 
        //     IconButton(
        //       onPressed: (){}, 
        //       icon: Icon(FontAwesomeIcons.facebook,
        //       // size: 50, //Icon Size
        //       color: Colors.blue,),
        //     ),
        // ),
        // Container(
        //   child: 
        //     IconButton(
        //       onPressed: (){}, 
        //       icon: Icon(FontAwesomeIcons.twitter,
        //       // size: 50, //Icon Size
        //       color: Colors.blue,),
        //     ),
        // ),
      ],
    );
  }
}



