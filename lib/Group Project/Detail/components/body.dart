import 'package:ecommerce_app/Group%20Project/Detail/components/color_dot.dart';
import 'package:ecommerce_app/Group%20Project/Detail/components/product_description.dart';
import 'package:ecommerce_app/Group%20Project/Detail/components/product_images.dart';
import 'package:ecommerce_app/Group%20Project/Detail/components/top_rounded_container.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/Product.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Home/components/rounded_icon_btn.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Productimages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: ProductDescription(
            product: product,
            pressOnSeeMore: () {},
          ),
        ),
        TopRoundedContainer(
          color: Color(0xFFF6F7F9),
          child: Row(
            children: [
              ColorDots(),
              Spacer(),
              RoundIconBtn(
                iconData: Icons.remove,
                press: () {},
              ),
              SizedBox(
                width: 15,
              ),
              RoundIconBtn(
                iconData: Icons.add,
                press: () {},
              ),
            ],
          ),
        ),
        TopRoundedContainer(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 600,
              height: 60,
              child: RaisedButton(
                textColor: Colors.white,
                color: kPrimaryColor,
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                ),
              ),
            ))
      ],
    );
  }
}
