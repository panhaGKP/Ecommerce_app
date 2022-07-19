import 'package:ecommerce_app/basic_module/basic_page.dart';
import 'package:flutter/material.dart';

import '../model/cart_model.dart';
import '../size_config.dart';
import 'components/cart_body.dart';

class CartScreen extends StatelessWidget {
  //const CartScreen({Key? key}) : super(key: key);

  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: _buildAppBar(context),
      body: CartBodyPage(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      centerTitle: true,
      title: Column(children: [
        Text(
          "Your Cart",
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "${cart.length} items",
          style: Theme.of(context).textTheme.caption,
        )
      ]),
    );
  }
}
