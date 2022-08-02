import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../model/cart_model.dart';

class CartBodyPage extends StatefulWidget {
  const CartBodyPage({Key? key}) : super(key: key);

  @override
  State<CartBodyPage> createState() => _CartBodyPageState();
}

class _CartBodyPageState extends State<CartBodyPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig().getProportionateScreenWidth(20)),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: cart.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            direction: DismissDirection.endToStart,
            child: BuildCartItem(cart: cart[index]),
            key: Key(cart[index].product.id.toString()),
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFFFE6E6),
              ),
              child: Row(children: [
                Spacer(),
                SvgPicture.asset("assets/icons/Trash.svg"),
              ]),
            ),
            onDismissed: (direction) {
              setState(() {
                cart.removeAt(index);
              });
            },
          ),
        ),
      ),
    );
  }
}

class BuildCartItem extends StatelessWidget {
  final CartModel cart;
  BuildCartItem({
    Key? key,
    required this.cart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: SizeConfig().getProportionateScreenWidth(88),
              child: AspectRatio(
                aspectRatio: 0.88,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(cart.product.images[0]),
                ),
              ),
            ),
            SizedBox(
              width: SizeConfig().getProportionateScreenWidth(20),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cart.product.title,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text.rich(TextSpan(
                    text: "\$${cart.product.price}",
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: kPrimaryColor),
                    children: [
                      TextSpan(
                        text: " x${cart.numOfItems}",
                        style: const TextStyle(color: kTextColor),
                      ),
                    ]))
              ],
            )
          ],
        ),
      ],
    );
  }
}
