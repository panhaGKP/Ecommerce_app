import 'package:ecommerce_app/Group%20Project/Home/home_screen.dart';
import 'package:ecommerce_app/cart/cart_screen.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/enum.dart';
import 'package:flutter/material.dart';

import '../model/bottomNavigationBar/bottom_navigation_bar.dart';

class UnderConstructionPage extends StatefulWidget {
  const UnderConstructionPage({Key? key}) : super(key: key);

  @override
  State<UnderConstructionPage> createState() => _UnderConstructionPageState();
}

class _UnderConstructionPageState extends State<UnderConstructionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildAppBar(context),
      // body: HomeScreen(),
      body: _buildBody(),
    );
  }

  final PageController _pageController = PageController();
  Widget _buildBody() {
    return Center(
      child: Text(
        "This Page is Under Construction",
        style: TextStyle(fontSize: 20, color: kPrimaryColor),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text("Under Construction Page"),
      backgroundColor: kPrimaryColor,
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
