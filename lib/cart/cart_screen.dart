import 'package:ecommerce_app/basic_module/basic_page.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: const CartBodyPage(),
      bottomNavigationBar: const CheckOutCart(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      centerTitle: true,
      title: _buildTitle(context),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Column(children: [
      const Text(
        "Your Cart",
        style: TextStyle(color: Colors.black),
      ),
      Text(
        "${cart.length} items",
        style: Theme.of(context).textTheme.caption,
      )
    ]);
  }
}

class CheckOutCart extends StatelessWidget {
  const CheckOutCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig().getProportionateScreenWidth(30),
          vertical: SizeConfig().getProportionateScreenWidth(15)),
      height: 174,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(0.15),
            ),
          ],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: SafeArea(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: SizeConfig().getProportionateScreenWidth(40),
                width: SizeConfig().getProportionateScreenWidth(40),
                decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset("assets/icons/receipt.svg"),
              ),
              Spacer(),
              const Text("Add voucher code"),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: kTextColor,
              )
            ],
          ),
          SizedBox(
            height: SizeConfig().getProportionateScreenHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: "Total: \n",
                  children: [
                    TextSpan(
                        text: "\$337.15",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(
                width: SizeConfig().getProportionateScreenWidth(190),
                height: SizeConfig().getProportionateScreenWidth(50),
                child: ElevatedButton(
                  child: Text("Check Out"),
                  onPressed: () {
                    print("U press it");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
