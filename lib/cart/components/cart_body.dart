import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/model/Product.dart';
import 'package:ecommerce_app/model/cart_model.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';

class CartBodyPage extends StatefulWidget {
  const CartBodyPage({Key? key}) : super(key: key);

  @override
  State<CartBodyPage> createState() => _CartBodyPageState();
}

class _CartBodyPageState extends State<CartBodyPage> {
  @override
  Widget build(BuildContext context) {
    return BuildCartItem(cart: cart[0]);
  }
}

// ignore: camel_case_types
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
