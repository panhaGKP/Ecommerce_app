import 'package:ecommerce_app/cart/cart_screen.dart';
import 'package:flutter/material.dart';

import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgScr: Icons.shopping_cart,
            numOfItems: 3,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
          ),
          IconBtnWithCounter(
            svgScr: Icons.notifications_active,
            numOfItems: 5,
            press: () {},
          ),
        ],
      ),
    );
  }
}
