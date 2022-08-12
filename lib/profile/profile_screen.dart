import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/bottomNavigationBar/bottom_navigation_bar.dart';
import 'component/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: ProfileBody(),
      // bottomNavigationBar: BuildButtomNavigation(
      //   selectedMenu: MenuState.profile,
      // ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      centerTitle: true,
      title: const Text(
        "Profile",
        style: TextStyle(color: kTextColor),
      ),
    );
  }
}
