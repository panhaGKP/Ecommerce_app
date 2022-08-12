import 'package:ecommerce_app/Group%20Project/Home/home_screen.dart';
import 'package:ecommerce_app/basic_module/uder_construction_page.dart';
import 'package:ecommerce_app/cart/cart_screen.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/enum.dart';
import 'package:ecommerce_app/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import '../model/bottomNavigationBar/bottom_navigation_bar.dart';

class BasicPage extends StatefulWidget {
  const BasicPage({Key? key}) : super(key: key);

  @override
  State<BasicPage> createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildAppBar(context),
      bottomNavigationBar: _buildBottomNavigationBar(),
      // body: HomeScreen(),
      body: _buildBody(),
    );
  }

  final PageController _pageController = PageController();
  Widget _buildBody() {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        HomeScreen(),
        const UnderConstructionPage(),
        const UnderConstructionPage(),
        const ProfileScreen()
      ],
    );
  }

  // MenuState index = MenuState.home;
  MenuState currentState = MenuState.home;
  int _currentIndex = 0;

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        _pageController.jumpToPage(_currentIndex);
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 35,
            ),
            label: "home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              size: 35,
            ),
            label: "Favorite"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.message_outlined,
              size: 35,
            ),
            label: "Message"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 35,
            ),
            label: "Profile"),
      ],
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text("Basic Page"),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CartScreen()));
            },
            icon: const Icon(Icons.shopping_bag_outlined))
      ],
    );
  }
}
