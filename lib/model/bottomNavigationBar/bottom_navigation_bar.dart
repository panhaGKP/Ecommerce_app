import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';
import '../../enum.dart';

class BuildButtomNavigation extends StatelessWidget {
  final MenuState selectedMenu;
  const BuildButtomNavigation({Key? key, required this.selectedMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xFFFDADADA).withOpacity(0.15)),
          ],
          color: Colors.white),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Shop Icon.svg",
                  color: selectedMenu == MenuState.home
                      ? kPrimaryColor
                      : inActiveIconColor)),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/Heart Icon.svg",
              color: selectedMenu == MenuState.favorite
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/Chat bubble Icon.svg",
              color: selectedMenu == MenuState.message
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/User Icon.svg",
              color: selectedMenu == MenuState.profile
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
          ),
        ],
      )),
    );
  }
}
